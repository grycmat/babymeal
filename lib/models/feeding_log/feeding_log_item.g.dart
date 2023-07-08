// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeding_log_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFeedingLogItemCollection on Isar {
  IsarCollection<FeedingLogItem> get feedingLogItems => this.collection();
}

const FeedingLogItemSchema = CollectionSchema(
  name: r'FeedingLogItem',
  id: -2561921301040376740,
  properties: {
    r'breastSide': PropertySchema(
      id: 0,
      name: r'breastSide',
      type: IsarType.byte,
      enumMap: _FeedingLogItembreastSideEnumValueMap,
    ),
    r'duration': PropertySchema(
      id: 1,
      name: r'duration',
      type: IsarType.string,
    )
  },
  estimateSize: _feedingLogItemEstimateSize,
  serialize: _feedingLogItemSerialize,
  deserialize: _feedingLogItemDeserialize,
  deserializeProp: _feedingLogItemDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _feedingLogItemGetId,
  getLinks: _feedingLogItemGetLinks,
  attach: _feedingLogItemAttach,
  version: '3.1.0+1',
);

int _feedingLogItemEstimateSize(
  FeedingLogItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.duration.length * 3;
  return bytesCount;
}

void _feedingLogItemSerialize(
  FeedingLogItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.breastSide.index);
  writer.writeString(offsets[1], object.duration);
}

FeedingLogItem _feedingLogItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FeedingLogItem(
    breastSide: _FeedingLogItembreastSideValueEnumMap[
            reader.readByteOrNull(offsets[0])] ??
        BreastSide.left,
    duration: reader.readString(offsets[1]),
  );
  object.id = id;
  return object;
}

P _feedingLogItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_FeedingLogItembreastSideValueEnumMap[
              reader.readByteOrNull(offset)] ??
          BreastSide.left) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FeedingLogItembreastSideEnumValueMap = {
  'left': 0,
  'right': 1,
  'none': 2,
};
const _FeedingLogItembreastSideValueEnumMap = {
  0: BreastSide.left,
  1: BreastSide.right,
  2: BreastSide.none,
};

Id _feedingLogItemGetId(FeedingLogItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _feedingLogItemGetLinks(FeedingLogItem object) {
  return [];
}

void _feedingLogItemAttach(
    IsarCollection<dynamic> col, Id id, FeedingLogItem object) {
  object.id = id;
}

extension FeedingLogItemQueryWhereSort
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QWhere> {
  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FeedingLogItemQueryWhere
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QWhereClause> {
  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterWhereClause> idBetween(
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

extension FeedingLogItemQueryFilter
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QFilterCondition> {
  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      breastSideEqualTo(BreastSide value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breastSide',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      breastSideGreaterThan(
    BreastSide value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'breastSide',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      breastSideLessThan(
    BreastSide value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'breastSide',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      breastSideBetween(
    BreastSide lower,
    BreastSide upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'breastSide',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'duration',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: '',
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      durationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'duration',
        value: '',
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterFilterCondition> idBetween(
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
}

extension FeedingLogItemQueryObject
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QFilterCondition> {}

extension FeedingLogItemQueryLinks
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QFilterCondition> {}

extension FeedingLogItemQuerySortBy
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QSortBy> {
  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy>
      sortByBreastSide() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breastSide', Sort.asc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy>
      sortByBreastSideDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breastSide', Sort.desc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy> sortByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy>
      sortByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }
}

extension FeedingLogItemQuerySortThenBy
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QSortThenBy> {
  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy>
      thenByBreastSide() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breastSide', Sort.asc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy>
      thenByBreastSideDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breastSide', Sort.desc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy> thenByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy>
      thenByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FeedingLogItemQueryWhereDistinct
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QDistinct> {
  QueryBuilder<FeedingLogItem, FeedingLogItem, QDistinct>
      distinctByBreastSide() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breastSide');
    });
  }

  QueryBuilder<FeedingLogItem, FeedingLogItem, QDistinct> distinctByDuration(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duration', caseSensitive: caseSensitive);
    });
  }
}

extension FeedingLogItemQueryProperty
    on QueryBuilder<FeedingLogItem, FeedingLogItem, QQueryProperty> {
  QueryBuilder<FeedingLogItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FeedingLogItem, BreastSide, QQueryOperations>
      breastSideProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breastSide');
    });
  }

  QueryBuilder<FeedingLogItem, String, QQueryOperations> durationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duration');
    });
  }
}
