// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMedicineModelCollection on Isar {
  IsarCollection<MedicineModel> get medicineModels => this.collection();
}

const MedicineModelSchema = CollectionSchema(
  name: r'MedicineModel',
  id: 2197460021641310300,
  properties: {
    r'alarmActive': PropertySchema(
      id: 0,
      name: r'alarmActive',
      type: IsarType.bool,
    ),
    r'frequencyHours': PropertySchema(
      id: 1,
      name: r'frequencyHours',
      type: IsarType.double,
    ),
    r'limitDate': PropertySchema(
      id: 2,
      name: r'limitDate',
      type: IsarType.dateTime,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'observations': PropertySchema(
      id: 4,
      name: r'observations',
      type: IsarType.string,
    )
  },
  estimateSize: _medicineModelEstimateSize,
  serialize: _medicineModelSerialize,
  deserialize: _medicineModelDeserialize,
  deserializeProp: _medicineModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _medicineModelGetId,
  getLinks: _medicineModelGetLinks,
  attach: _medicineModelAttach,
  version: '3.1.8',
);

int _medicineModelEstimateSize(
  MedicineModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observations;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _medicineModelSerialize(
  MedicineModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.alarmActive);
  writer.writeDouble(offsets[1], object.frequencyHours);
  writer.writeDateTime(offsets[2], object.limitDate);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.observations);
}

MedicineModel _medicineModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedicineModel();
  object.alarmActive = reader.readBoolOrNull(offsets[0]);
  object.frequencyHours = reader.readDoubleOrNull(offsets[1]);
  object.id = id;
  object.limitDate = reader.readDateTimeOrNull(offsets[2]);
  object.name = reader.readStringOrNull(offsets[3]);
  object.observations = reader.readStringOrNull(offsets[4]);
  return object;
}

P _medicineModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medicineModelGetId(MedicineModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _medicineModelGetLinks(MedicineModel object) {
  return [];
}

void _medicineModelAttach(
    IsarCollection<dynamic> col, Id id, MedicineModel object) {
  object.id = id;
}

extension MedicineModelQueryWhereSort
    on QueryBuilder<MedicineModel, MedicineModel, QWhere> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MedicineModelQueryWhere
    on QueryBuilder<MedicineModel, MedicineModel, QWhereClause> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterWhereClause> idBetween(
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

extension MedicineModelQueryFilter
    on QueryBuilder<MedicineModel, MedicineModel, QFilterCondition> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      alarmActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'alarmActive',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      alarmActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'alarmActive',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      alarmActiveEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alarmActive',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frequencyHours',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frequencyHours',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frequencyHours',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frequencyHours',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frequencyHours',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frequencyHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'limitDate',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'limitDate',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'limitDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'limitDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'limitDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'limitDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observations',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observations',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observations',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observations',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observations',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observations',
        value: '',
      ));
    });
  }
}

extension MedicineModelQueryObject
    on QueryBuilder<MedicineModel, MedicineModel, QFilterCondition> {}

extension MedicineModelQueryLinks
    on QueryBuilder<MedicineModel, MedicineModel, QFilterCondition> {}

extension MedicineModelQuerySortBy
    on QueryBuilder<MedicineModel, MedicineModel, QSortBy> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByAlarmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alarmActive', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByAlarmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alarmActive', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByFrequencyHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencyHours', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByFrequencyHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencyHours', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }
}

extension MedicineModelQuerySortThenBy
    on QueryBuilder<MedicineModel, MedicineModel, QSortThenBy> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByAlarmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alarmActive', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByAlarmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alarmActive', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByFrequencyHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencyHours', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByFrequencyHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencyHours', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByObservations() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.asc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByObservationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observations', Sort.desc);
    });
  }
}

extension MedicineModelQueryWhereDistinct
    on QueryBuilder<MedicineModel, MedicineModel, QDistinct> {
  QueryBuilder<MedicineModel, MedicineModel, QDistinct>
      distinctByAlarmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alarmActive');
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QDistinct>
      distinctByFrequencyHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frequencyHours');
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QDistinct> distinctByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'limitDate');
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QDistinct> distinctByObservations(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observations', caseSensitive: caseSensitive);
    });
  }
}

extension MedicineModelQueryProperty
    on QueryBuilder<MedicineModel, MedicineModel, QQueryProperty> {
  QueryBuilder<MedicineModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MedicineModel, bool?, QQueryOperations> alarmActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alarmActive');
    });
  }

  QueryBuilder<MedicineModel, double?, QQueryOperations>
      frequencyHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frequencyHours');
    });
  }

  QueryBuilder<MedicineModel, DateTime?, QQueryOperations> limitDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'limitDate');
    });
  }

  QueryBuilder<MedicineModel, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<MedicineModel, String?, QQueryOperations>
      observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observations');
    });
  }
}
