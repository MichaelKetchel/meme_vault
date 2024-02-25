// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meme.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMemeCollection on Isar {
  IsarCollection<Meme> get memes => this.collection();
}

const MemeSchema = CollectionSchema(
  name: r'Meme',
  id: 2255658094859912536,
  properties: {
    r'blurHash': PropertySchema(
      id: 0,
      name: r'blurHash',
      type: IsarType.string,
    ),
    r'fullText': PropertySchema(
      id: 1,
      name: r'fullText',
      type: IsarType.string,
    ),
    r'imageHash': PropertySchema(
      id: 2,
      name: r'imageHash',
      type: IsarType.string,
    ),
    r'originalFilename': PropertySchema(
      id: 3,
      name: r'originalFilename',
      type: IsarType.string,
    ),
    r'state': PropertySchema(
      id: 4,
      name: r'state',
      type: IsarType.byte,
      enumMap: _MemestateEnumValueMap,
    ),
    r'storedPath': PropertySchema(
      id: 5,
      name: r'storedPath',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _memeEstimateSize,
  serialize: _memeSerialize,
  deserialize: _memeDeserialize,
  deserializeProp: _memeDeserializeProp,
  idName: r'id',
  indexes: {
    r'storedPath': IndexSchema(
      id: 5318567614768445414,
      name: r'storedPath',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'storedPath',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'originalFilename': IndexSchema(
      id: 152822952406767963,
      name: r'originalFilename',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'originalFilename',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'title': IndexSchema(
      id: -7636685945352118059,
      name: r'title',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'title',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'fullText': IndexSchema(
      id: 9100252536502516468,
      name: r'fullText',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'fullText',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'imageHash': IndexSchema(
      id: 1074195348967840514,
      name: r'imageHash',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'imageHash',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'tags': LinkSchema(
      id: 3787571801987692468,
      name: r'tags',
      target: r'Tag',
      single: false,
      linkName: r'memes',
    )
  },
  embeddedSchemas: {},
  getId: _memeGetId,
  getLinks: _memeGetLinks,
  attach: _memeAttach,
  version: '3.1.0+1',
);

int _memeEstimateSize(
  Meme object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.blurHash;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fullText;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imageHash;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.originalFilename;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storedPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _memeSerialize(
  Meme object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.blurHash);
  writer.writeString(offsets[1], object.fullText);
  writer.writeString(offsets[2], object.imageHash);
  writer.writeString(offsets[3], object.originalFilename);
  writer.writeByte(offsets[4], object.state.index);
  writer.writeString(offsets[5], object.storedPath);
  writer.writeString(offsets[6], object.title);
}

Meme _memeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Meme();
  object.blurHash = reader.readStringOrNull(offsets[0]);
  object.fullText = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.imageHash = reader.readStringOrNull(offsets[2]);
  object.originalFilename = reader.readStringOrNull(offsets[3]);
  object.state = _MemestateValueEnumMap[reader.readByteOrNull(offsets[4])] ??
      MemeState.reviewed;
  object.storedPath = reader.readStringOrNull(offsets[5]);
  object.title = reader.readStringOrNull(offsets[6]);
  return object;
}

P _memeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (_MemestateValueEnumMap[reader.readByteOrNull(offset)] ??
          MemeState.reviewed) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MemestateEnumValueMap = {
  'reviewed': 0,
  'newMeme': 1,
};
const _MemestateValueEnumMap = {
  0: MemeState.reviewed,
  1: MemeState.newMeme,
};

Id _memeGetId(Meme object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _memeGetLinks(Meme object) {
  return [object.tags];
}

void _memeAttach(IsarCollection<dynamic> col, Id id, Meme object) {
  object.id = id;
  object.tags.attach(col, col.isar.collection<Tag>(), r'tags', id);
}

extension MemeByIndex on IsarCollection<Meme> {
  Future<Meme?> getByStoredPath(String? storedPath) {
    return getByIndex(r'storedPath', [storedPath]);
  }

  Meme? getByStoredPathSync(String? storedPath) {
    return getByIndexSync(r'storedPath', [storedPath]);
  }

  Future<bool> deleteByStoredPath(String? storedPath) {
    return deleteByIndex(r'storedPath', [storedPath]);
  }

  bool deleteByStoredPathSync(String? storedPath) {
    return deleteByIndexSync(r'storedPath', [storedPath]);
  }

  Future<List<Meme?>> getAllByStoredPath(List<String?> storedPathValues) {
    final values = storedPathValues.map((e) => [e]).toList();
    return getAllByIndex(r'storedPath', values);
  }

  List<Meme?> getAllByStoredPathSync(List<String?> storedPathValues) {
    final values = storedPathValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'storedPath', values);
  }

  Future<int> deleteAllByStoredPath(List<String?> storedPathValues) {
    final values = storedPathValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'storedPath', values);
  }

  int deleteAllByStoredPathSync(List<String?> storedPathValues) {
    final values = storedPathValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'storedPath', values);
  }

  Future<Id> putByStoredPath(Meme object) {
    return putByIndex(r'storedPath', object);
  }

  Id putByStoredPathSync(Meme object, {bool saveLinks = true}) {
    return putByIndexSync(r'storedPath', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByStoredPath(List<Meme> objects) {
    return putAllByIndex(r'storedPath', objects);
  }

  List<Id> putAllByStoredPathSync(List<Meme> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'storedPath', objects, saveLinks: saveLinks);
  }

  Future<Meme?> getByImageHash(String? imageHash) {
    return getByIndex(r'imageHash', [imageHash]);
  }

  Meme? getByImageHashSync(String? imageHash) {
    return getByIndexSync(r'imageHash', [imageHash]);
  }

  Future<bool> deleteByImageHash(String? imageHash) {
    return deleteByIndex(r'imageHash', [imageHash]);
  }

  bool deleteByImageHashSync(String? imageHash) {
    return deleteByIndexSync(r'imageHash', [imageHash]);
  }

  Future<List<Meme?>> getAllByImageHash(List<String?> imageHashValues) {
    final values = imageHashValues.map((e) => [e]).toList();
    return getAllByIndex(r'imageHash', values);
  }

  List<Meme?> getAllByImageHashSync(List<String?> imageHashValues) {
    final values = imageHashValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'imageHash', values);
  }

  Future<int> deleteAllByImageHash(List<String?> imageHashValues) {
    final values = imageHashValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'imageHash', values);
  }

  int deleteAllByImageHashSync(List<String?> imageHashValues) {
    final values = imageHashValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'imageHash', values);
  }

  Future<Id> putByImageHash(Meme object) {
    return putByIndex(r'imageHash', object);
  }

  Id putByImageHashSync(Meme object, {bool saveLinks = true}) {
    return putByIndexSync(r'imageHash', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByImageHash(List<Meme> objects) {
    return putAllByIndex(r'imageHash', objects);
  }

  List<Id> putAllByImageHashSync(List<Meme> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'imageHash', objects, saveLinks: saveLinks);
  }
}

extension MemeQueryWhereSort on QueryBuilder<Meme, Meme, QWhere> {
  QueryBuilder<Meme, Meme, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhere> anyStoredPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'storedPath'),
      );
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhere> anyOriginalFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'originalFilename'),
      );
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhere> anyTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'title'),
      );
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhere> anyFullText() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'fullText'),
      );
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhere> anyImageHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'imageHash'),
      );
    });
  }
}

extension MemeQueryWhere on QueryBuilder<Meme, Meme, QWhereClause> {
  QueryBuilder<Meme, Meme, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'storedPath',
        value: [null],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedPath',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathEqualTo(
      String? storedPath) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'storedPath',
        value: [storedPath],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathNotEqualTo(
      String? storedPath) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedPath',
              lower: [],
              upper: [storedPath],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedPath',
              lower: [storedPath],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedPath',
              lower: [storedPath],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedPath',
              lower: [],
              upper: [storedPath],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathGreaterThan(
    String? storedPath, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedPath',
        lower: [storedPath],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathLessThan(
    String? storedPath, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedPath',
        lower: [],
        upper: [storedPath],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathBetween(
    String? lowerStoredPath,
    String? upperStoredPath, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedPath',
        lower: [lowerStoredPath],
        includeLower: includeLower,
        upper: [upperStoredPath],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathStartsWith(
      String StoredPathPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedPath',
        lower: [StoredPathPrefix],
        upper: ['$StoredPathPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'storedPath',
        value: [''],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'storedPath',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'storedPath',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'storedPath',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'storedPath',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'originalFilename',
        value: [null],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'originalFilename',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameEqualTo(
      String? originalFilename) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'originalFilename',
        value: [originalFilename],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameNotEqualTo(
      String? originalFilename) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'originalFilename',
              lower: [],
              upper: [originalFilename],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'originalFilename',
              lower: [originalFilename],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'originalFilename',
              lower: [originalFilename],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'originalFilename',
              lower: [],
              upper: [originalFilename],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameGreaterThan(
    String? originalFilename, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'originalFilename',
        lower: [originalFilename],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameLessThan(
    String? originalFilename, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'originalFilename',
        lower: [],
        upper: [originalFilename],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameBetween(
    String? lowerOriginalFilename,
    String? upperOriginalFilename, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'originalFilename',
        lower: [lowerOriginalFilename],
        includeLower: includeLower,
        upper: [upperOriginalFilename],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameStartsWith(
      String OriginalFilenamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'originalFilename',
        lower: [OriginalFilenamePrefix],
        upper: ['$OriginalFilenamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'originalFilename',
        value: [''],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> originalFilenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'originalFilename',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'originalFilename',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'originalFilename',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'originalFilename',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'title',
        value: [null],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'title',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleEqualTo(String? title) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'title',
        value: [title],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleNotEqualTo(String? title) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [],
              upper: [title],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [title],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [title],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [],
              upper: [title],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleGreaterThan(
    String? title, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'title',
        lower: [title],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleLessThan(
    String? title, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'title',
        lower: [],
        upper: [title],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleBetween(
    String? lowerTitle,
    String? upperTitle, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'title',
        lower: [lowerTitle],
        includeLower: includeLower,
        upper: [upperTitle],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleStartsWith(
      String TitlePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'title',
        lower: [TitlePrefix],
        upper: ['$TitlePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'title',
        value: [''],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'title',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'title',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'title',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'title',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fullText',
        value: [null],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fullText',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextEqualTo(
      String? fullText) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fullText',
        value: [fullText],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextNotEqualTo(
      String? fullText) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fullText',
              lower: [],
              upper: [fullText],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fullText',
              lower: [fullText],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fullText',
              lower: [fullText],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'fullText',
              lower: [],
              upper: [fullText],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextGreaterThan(
    String? fullText, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fullText',
        lower: [fullText],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextLessThan(
    String? fullText, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fullText',
        lower: [],
        upper: [fullText],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextBetween(
    String? lowerFullText,
    String? upperFullText, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fullText',
        lower: [lowerFullText],
        includeLower: includeLower,
        upper: [upperFullText],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextStartsWith(
      String FullTextPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'fullText',
        lower: [FullTextPrefix],
        upper: ['$FullTextPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'fullText',
        value: [''],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> fullTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'fullText',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'fullText',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'fullText',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'fullText',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'imageHash',
        value: [null],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'imageHash',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashEqualTo(
      String? imageHash) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'imageHash',
        value: [imageHash],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashNotEqualTo(
      String? imageHash) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'imageHash',
              lower: [],
              upper: [imageHash],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'imageHash',
              lower: [imageHash],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'imageHash',
              lower: [imageHash],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'imageHash',
              lower: [],
              upper: [imageHash],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashGreaterThan(
    String? imageHash, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'imageHash',
        lower: [imageHash],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashLessThan(
    String? imageHash, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'imageHash',
        lower: [],
        upper: [imageHash],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashBetween(
    String? lowerImageHash,
    String? upperImageHash, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'imageHash',
        lower: [lowerImageHash],
        includeLower: includeLower,
        upper: [upperImageHash],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashStartsWith(
      String ImageHashPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'imageHash',
        lower: [ImageHashPrefix],
        upper: ['$ImageHashPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'imageHash',
        value: [''],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> imageHashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'imageHash',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'imageHash',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'imageHash',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'imageHash',
              upper: [''],
            ));
      }
    });
  }
}

extension MemeQueryFilter on QueryBuilder<Meme, Meme, QFilterCondition> {
  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blurHash',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blurHash',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blurHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'blurHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'blurHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'blurHash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'blurHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'blurHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'blurHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'blurHash',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blurHash',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> blurHashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'blurHash',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fullText',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fullText',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullText',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> fullTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullText',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageHash',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageHash',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageHash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageHash',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageHash',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> imageHashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageHash',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'originalFilename',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'originalFilename',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalFilename',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalFilename',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalFilename',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> originalFilenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalFilename',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> stateEqualTo(
      MemeState value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: value,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> stateGreaterThan(
    MemeState value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'state',
        value: value,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> stateLessThan(
    MemeState value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'state',
        value: value,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> stateBetween(
    MemeState lower,
    MemeState upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'state',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storedPath',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storedPath',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storedPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storedPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storedPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storedPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storedPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storedPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storedPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storedPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storedPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storedPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension MemeQueryObject on QueryBuilder<Meme, Meme, QFilterCondition> {}

extension MemeQueryLinks on QueryBuilder<Meme, Meme, QFilterCondition> {
  QueryBuilder<Meme, Meme, QAfterFilterCondition> tags(FilterQuery<Tag> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tags');
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> tagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, true, length, true);
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, 0, true);
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, false, 999999, true);
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', 0, true, length, include);
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tags', length, include, 999999, true);
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tags', lower, includeLower, upper, includeUpper);
    });
  }
}

extension MemeQuerySortBy on QueryBuilder<Meme, Meme, QSortBy> {
  QueryBuilder<Meme, Meme, QAfterSortBy> sortByBlurHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blurHash', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByBlurHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blurHash', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByFullText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByFullTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByImageHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageHash', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByImageHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageHash', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByOriginalFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalFilename', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByOriginalFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalFilename', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByStoredPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedPath', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByStoredPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedPath', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MemeQuerySortThenBy on QueryBuilder<Meme, Meme, QSortThenBy> {
  QueryBuilder<Meme, Meme, QAfterSortBy> thenByBlurHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blurHash', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByBlurHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blurHash', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByFullText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByFullTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByImageHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageHash', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByImageHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageHash', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByOriginalFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalFilename', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByOriginalFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalFilename', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByStoredPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedPath', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByStoredPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedPath', Sort.desc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MemeQueryWhereDistinct on QueryBuilder<Meme, Meme, QDistinct> {
  QueryBuilder<Meme, Meme, QDistinct> distinctByBlurHash(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blurHash', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Meme, Meme, QDistinct> distinctByFullText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Meme, Meme, QDistinct> distinctByImageHash(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageHash', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Meme, Meme, QDistinct> distinctByOriginalFilename(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalFilename',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Meme, Meme, QDistinct> distinctByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'state');
    });
  }

  QueryBuilder<Meme, Meme, QDistinct> distinctByStoredPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storedPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Meme, Meme, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension MemeQueryProperty on QueryBuilder<Meme, Meme, QQueryProperty> {
  QueryBuilder<Meme, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Meme, String?, QQueryOperations> blurHashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blurHash');
    });
  }

  QueryBuilder<Meme, String?, QQueryOperations> fullTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullText');
    });
  }

  QueryBuilder<Meme, String?, QQueryOperations> imageHashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageHash');
    });
  }

  QueryBuilder<Meme, String?, QQueryOperations> originalFilenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalFilename');
    });
  }

  QueryBuilder<Meme, MemeState, QQueryOperations> stateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'state');
    });
  }

  QueryBuilder<Meme, String?, QQueryOperations> storedPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storedPath');
    });
  }

  QueryBuilder<Meme, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
