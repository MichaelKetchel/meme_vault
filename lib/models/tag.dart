import 'package:isar/isar.dart';

import 'meme.dart';

part 'tag.g.dart';

@collection
class Tag {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  @Index(type: IndexType.value, unique: true)
  String? value;

  @Index(type: IndexType.value)
  String? friendly;

  // @Backlink(to: 'tag')
  final memes = IsarLinks<Meme>();
}