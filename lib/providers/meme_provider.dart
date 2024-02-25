import 'dart:io';

import 'package:blurhash_dart/blurhash_dart.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:isar/isar.dart';
import 'package:meme_vault/utilities/perceptual_hash.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:path/path.dart' as path;
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as imgLib;

import '../models/meme.dart';
import '../models/tag.dart';

class MemeProvider extends ChangeNotifier{
  MemeProvider() {
    db = openDB();
    init();
  }

  static const ignoredWords = ['a','the','and'];

  static const uuid = Uuid();
  final List<CollectionSchema> schemas = [MemeSchema, TagSchema];
  late Directory? externalStorageDirectory;
  late Future<Isar?> db;

  List<Meme> _memes = [];
  List<Meme> get memes => _memes;
  List<Tag> _tags = [];
  List<Tag> get tags => _tags;

  void init() async {
    final isar = await db;
    isar!.txn(() async {
      final memesCollection = isar.memes;
      _memes = await memesCollection.where().findAll();
      final tagCollection = isar.tags;
      _tags = await tagCollection.where().findAll();
      notifyListeners();
    });
  }

  Future<Isar?> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      externalStorageDirectory = await getExternalStorageDirectory();
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        schemas,
        directory: dir.path,
        inspector: true,
      );
    }
    return Isar.getInstance();
  }

  void saveMeme(XFile imageFile, List<String> tags,{ String? title, MemeState memeState=MemeState.newMeme, String? fullText}) async {
    File storedFile = File(
      path.join(externalStorageDirectory!.path, uuid.v1())
    );
    // No need to wait here, we're moving on with life
    List<Future> futures = [];
    futures.add(storedFile.writeAsBytes(await imageFile.readAsBytes()));
    final Uint8List imgData = await imageFile.readAsBytes();

    final meme = Meme();
    meme.originalFilename = path.basename(imageFile.path);
    meme.storedPath = storedFile.path;
    meme.title = title;
    meme.state = memeState;
    meme.fullText = fullText;

    // Create blurhash
    final image = imgLib.decodeImage(imgData);
    meme.blurHash = BlurHash.encode(image!).hash;

    // Create PerceptualHash
    meme.imageHash = PerceptualHash.generateHash(image);

    // Get DB and pre-write meme
    final isar = await db;
    isar!.writeTxn(() async {
      await isar.memes.put(meme);
    });

    // Process tags

    List<String> processedTags = tags.toSet().map((e) => e.toLowerCase().trim()).where((e) => !ignoredWords.contains(e)).toList();
    for (var tagValue in tags){
      var newTag = await isar.tags.filter().valueEqualTo(tagValue).findFirst();

      if (newTag == null){
        newTag = Tag();
        newTag.value = tagValue;
        newTag.friendly = tagValue;
      }
      newTag.memes.add(meme);
      futures.add (isar.writeTxn(() async {
        await isar.tags.put(newTag!);
        await newTag.memes.save();
      }));
    }
    // Make sure all writing and transactions saved.
    await Future.wait(futures);
  }

  void addMeme(Meme meme) async {
    final isar = await db;
    await isar!.writeTxn(() async {
    await isar.memes.put(meme);
    _memes.add(meme);
    notifyListeners();
    });
  }

  void addTag(Tag tag) async {
    final isar = await db;
    await isar!.writeTxn(() async {
      await isar.tags.put(tag);
      _tags.add(tag);
      notifyListeners();
    });
  }

  void deleteMeme(Meme meme) async {
    final isar = await db;
    await isar!.writeTxn(() async {
      await isar.memes.delete(meme.id);
      _memes.remove(meme);
      notifyListeners();
    });
  }

  void deleteTag(Tag tag) async {
    final isar = await db;
    await isar!.writeTxn(() async {
      await isar.tags.delete(tag.id);
      _tags.remove(tag);
      notifyListeners();
    });
  }
}