import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/meme.dart';
import '../models/tag.dart';

class MemeProvider extends ChangeNotifier{
  MemeProvider() {
    db = openDB();
    init();
  }

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