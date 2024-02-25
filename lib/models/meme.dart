import 'package:isar/isar.dart';
import 'tag.dart';

part 'meme.g.dart';

@collection
class Meme {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  @Index(type: IndexType.value, unique: true)
  String? storedFilename;

  @Index(type: IndexType.value)
  String? originalFilename;

  @Index(type: IndexType.value)
  String? title;

  @Index(type: IndexType.value, unique: true)
  String? imageHash;

  String? blurHash;

  @Enumerated(EnumType.ordinal)
  MemeState state = MemeState.newMeme;

  @Backlink(to: 'memes')
  final tags = IsarLinks<Tag>();
}

enum MemeState {
  reviewed,
  newMeme
}
