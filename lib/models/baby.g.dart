// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baby.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBabyCollection on Isar {
  IsarCollection<Baby> get babys => this.collection();
}

const BabySchema = CollectionSchema(
  name: r'Baby',
  id: -8631013617778749638,
  properties: {
    r'birthDate': PropertySchema(
      id: 0,
      name: r'birthDate',
      type: IsarType.dateTime,
    ),
    r'birthHeight': PropertySchema(
      id: 1,
      name: r'birthHeight',
      type: IsarType.string,
    ),
    r'birthWeight': PropertySchema(
      id: 2,
      name: r'birthWeight',
      type: IsarType.string,
    ),
    r'currentHeight': PropertySchema(
      id: 3,
      name: r'currentHeight',
      type: IsarType.string,
    ),
    r'currentWeight': PropertySchema(
      id: 4,
      name: r'currentWeight',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _babyEstimateSize,
  serialize: _babySerialize,
  deserialize: _babyDeserialize,
  deserializeProp: _babyDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _babyGetId,
  getLinks: _babyGetLinks,
  attach: _babyAttach,
  version: '3.1.0+1',
);

int _babyEstimateSize(
  Baby object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.birthHeight.length * 3;
  bytesCount += 3 + object.birthWeight.length * 3;
  bytesCount += 3 + object.currentHeight.length * 3;
  bytesCount += 3 + object.currentWeight.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _babySerialize(
  Baby object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.birthDate);
  writer.writeString(offsets[1], object.birthHeight);
  writer.writeString(offsets[2], object.birthWeight);
  writer.writeString(offsets[3], object.currentHeight);
  writer.writeString(offsets[4], object.currentWeight);
  writer.writeString(offsets[5], object.name);
}

Baby _babyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Baby(
    birthDate: reader.readDateTime(offsets[0]),
    birthHeight: reader.readString(offsets[1]),
    birthWeight: reader.readString(offsets[2]),
    currentHeight: reader.readString(offsets[3]),
    currentWeight: reader.readString(offsets[4]),
    name: reader.readString(offsets[5]),
  );
  object.id = id;
  return object;
}

P _babyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _babyGetId(Baby object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _babyGetLinks(Baby object) {
  return [];
}

void _babyAttach(IsarCollection<dynamic> col, Id id, Baby object) {
  object.id = id;
}

extension BabyQueryWhereSort on QueryBuilder<Baby, Baby, QWhere> {
  QueryBuilder<Baby, Baby, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BabyQueryWhere on QueryBuilder<Baby, Baby, QWhereClause> {
  QueryBuilder<Baby, Baby, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Baby, Baby, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Baby, Baby, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Baby, Baby, QAfterWhereClause> idBetween(
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
}

extension BabyQueryFilter on QueryBuilder<Baby, Baby, QFilterCondition> {
  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'birthHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'birthHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'birthHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'birthHeight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthHeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthHeightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'birthHeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthWeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'birthWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'birthWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'birthWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'birthWeight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthWeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> birthWeightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'birthWeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currentHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currentHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currentHeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currentHeight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentHeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentHeightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currentHeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentWeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currentWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currentWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currentWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currentWeight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentWeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> currentWeightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currentWeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Baby, Baby, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Baby, Baby, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Baby, Baby, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension BabyQueryObject on QueryBuilder<Baby, Baby, QFilterCondition> {}

extension BabyQueryLinks on QueryBuilder<Baby, Baby, QFilterCondition> {}

extension BabyQuerySortBy on QueryBuilder<Baby, Baby, QSortBy> {
  QueryBuilder<Baby, Baby, QAfterSortBy> sortByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByBirthHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthHeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByBirthHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthHeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByBirthWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthWeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByBirthWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthWeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByCurrentHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByCurrentHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByCurrentWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByCurrentWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension BabyQuerySortThenBy on QueryBuilder<Baby, Baby, QSortThenBy> {
  QueryBuilder<Baby, Baby, QAfterSortBy> thenByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByBirthHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthHeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByBirthHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthHeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByBirthWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthWeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByBirthWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthWeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByCurrentHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByCurrentHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentHeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByCurrentWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByCurrentWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentWeight', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Baby, Baby, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension BabyQueryWhereDistinct on QueryBuilder<Baby, Baby, QDistinct> {
  QueryBuilder<Baby, Baby, QDistinct> distinctByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthDate');
    });
  }

  QueryBuilder<Baby, Baby, QDistinct> distinctByBirthHeight(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthHeight', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Baby, Baby, QDistinct> distinctByBirthWeight(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthWeight', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Baby, Baby, QDistinct> distinctByCurrentHeight(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentHeight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Baby, Baby, QDistinct> distinctByCurrentWeight(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentWeight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Baby, Baby, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension BabyQueryProperty on QueryBuilder<Baby, Baby, QQueryProperty> {
  QueryBuilder<Baby, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Baby, DateTime, QQueryOperations> birthDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthDate');
    });
  }

  QueryBuilder<Baby, String, QQueryOperations> birthHeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthHeight');
    });
  }

  QueryBuilder<Baby, String, QQueryOperations> birthWeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthWeight');
    });
  }

  QueryBuilder<Baby, String, QQueryOperations> currentHeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentHeight');
    });
  }

  QueryBuilder<Baby, String, QQueryOperations> currentWeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentWeight');
    });
  }

  QueryBuilder<Baby, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
