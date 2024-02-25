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
    r'imageHash': PropertySchema(
      id: 1,
      name: r'imageHash',
      type: IsarType.string,
    ),
    r'originalFilename': PropertySchema(
      id: 2,
      name: r'originalFilename',
      type: IsarType.string,
    ),
    r'state': PropertySchema(
      id: 3,
      name: r'state',
      type: IsarType.byte,
      enumMap: _MemestateEnumValueMap,
    ),
    r'storedFilename': PropertySchema(
      id: 4,
      name: r'storedFilename',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 5,
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
    r'storedFilename': IndexSchema(
      id: -3910273592639713404,
      name: r'storedFilename',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'storedFilename',
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
    final value = object.storedFilename;
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
  writer.writeString(offsets[1], object.imageHash);
  writer.writeString(offsets[2], object.originalFilename);
  writer.writeByte(offsets[3], object.state.index);
  writer.writeString(offsets[4], object.storedFilename);
  writer.writeString(offsets[5], object.title);
}

Meme _memeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Meme();
  object.blurHash = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.imageHash = reader.readStringOrNull(offsets[1]);
  object.originalFilename = reader.readStringOrNull(offsets[2]);
  object.state = _MemestateValueEnumMap[reader.readByteOrNull(offsets[3])] ??
      MemeState.reviewed;
  object.storedFilename = reader.readStringOrNull(offsets[4]);
  object.title = reader.readStringOrNull(offsets[5]);
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
      return (_MemestateValueEnumMap[reader.readByteOrNull(offset)] ??
          MemeState.reviewed) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
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
  Future<Meme?> getByStoredFilename(String? storedFilename) {
    return getByIndex(r'storedFilename', [storedFilename]);
  }

  Meme? getByStoredFilenameSync(String? storedFilename) {
    return getByIndexSync(r'storedFilename', [storedFilename]);
  }

  Future<bool> deleteByStoredFilename(String? storedFilename) {
    return deleteByIndex(r'storedFilename', [storedFilename]);
  }

  bool deleteByStoredFilenameSync(String? storedFilename) {
    return deleteByIndexSync(r'storedFilename', [storedFilename]);
  }

  Future<List<Meme?>> getAllByStoredFilename(
      List<String?> storedFilenameValues) {
    final values = storedFilenameValues.map((e) => [e]).toList();
    return getAllByIndex(r'storedFilename', values);
  }

  List<Meme?> getAllByStoredFilenameSync(List<String?> storedFilenameValues) {
    final values = storedFilenameValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'storedFilename', values);
  }

  Future<int> deleteAllByStoredFilename(List<String?> storedFilenameValues) {
    final values = storedFilenameValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'storedFilename', values);
  }

  int deleteAllByStoredFilenameSync(List<String?> storedFilenameValues) {
    final values = storedFilenameValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'storedFilename', values);
  }

  Future<Id> putByStoredFilename(Meme object) {
    return putByIndex(r'storedFilename', object);
  }

  Id putByStoredFilenameSync(Meme object, {bool saveLinks = true}) {
    return putByIndexSync(r'storedFilename', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByStoredFilename(List<Meme> objects) {
    return putAllByIndex(r'storedFilename', objects);
  }

  List<Id> putAllByStoredFilenameSync(List<Meme> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'storedFilename', objects, saveLinks: saveLinks);
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

  QueryBuilder<Meme, Meme, QAfterWhere> anyStoredFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'storedFilename'),
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

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'storedFilename',
        value: [null],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedFilename',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameEqualTo(
      String? storedFilename) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'storedFilename',
        value: [storedFilename],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameNotEqualTo(
      String? storedFilename) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedFilename',
              lower: [],
              upper: [storedFilename],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedFilename',
              lower: [storedFilename],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedFilename',
              lower: [storedFilename],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'storedFilename',
              lower: [],
              upper: [storedFilename],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameGreaterThan(
    String? storedFilename, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedFilename',
        lower: [storedFilename],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameLessThan(
    String? storedFilename, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedFilename',
        lower: [],
        upper: [storedFilename],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameBetween(
    String? lowerStoredFilename,
    String? upperStoredFilename, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedFilename',
        lower: [lowerStoredFilename],
        includeLower: includeLower,
        upper: [upperStoredFilename],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameStartsWith(
      String StoredFilenamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'storedFilename',
        lower: [StoredFilenamePrefix],
        upper: ['$StoredFilenamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'storedFilename',
        value: [''],
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterWhereClause> storedFilenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'storedFilename',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'storedFilename',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'storedFilename',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'storedFilename',
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

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storedFilename',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storedFilename',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storedFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storedFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storedFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storedFilename',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storedFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storedFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storedFilename',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storedFilename',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storedFilename',
        value: '',
      ));
    });
  }

  QueryBuilder<Meme, Meme, QAfterFilterCondition> storedFilenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storedFilename',
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

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByStoredFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedFilename', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> sortByStoredFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedFilename', Sort.desc);
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

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByStoredFilename() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedFilename', Sort.asc);
    });
  }

  QueryBuilder<Meme, Meme, QAfterSortBy> thenByStoredFilenameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'storedFilename', Sort.desc);
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

  QueryBuilder<Meme, Meme, QDistinct> distinctByStoredFilename(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'storedFilename',
          caseSensitive: caseSensitive);
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

  QueryBuilder<Meme, String?, QQueryOperations> storedFilenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'storedFilename');
    });
  }

  QueryBuilder<Meme, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
