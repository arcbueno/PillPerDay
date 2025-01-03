// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_registry.model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMedicineRegistryModelCollection on Isar {
  IsarCollection<MedicineRegistryModel> get medicineRegistryModels =>
      this.collection();
}

const MedicineRegistryModelSchema = CollectionSchema(
  name: r'MedicineRegistryModel',
  id: 2252130702364077786,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'medicineId': PropertySchema(
      id: 1,
      name: r'medicineId',
      type: IsarType.long,
    )
  },
  estimateSize: _medicineRegistryModelEstimateSize,
  serialize: _medicineRegistryModelSerialize,
  deserialize: _medicineRegistryModelDeserialize,
  deserializeProp: _medicineRegistryModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _medicineRegistryModelGetId,
  getLinks: _medicineRegistryModelGetLinks,
  attach: _medicineRegistryModelAttach,
  version: '3.1.8',
);

int _medicineRegistryModelEstimateSize(
  MedicineRegistryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _medicineRegistryModelSerialize(
  MedicineRegistryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.medicineId);
}

MedicineRegistryModel _medicineRegistryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedicineRegistryModel();
  object.date = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.medicineId = reader.readLongOrNull(offsets[1]);
  return object;
}

P _medicineRegistryModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medicineRegistryModelGetId(MedicineRegistryModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _medicineRegistryModelGetLinks(
    MedicineRegistryModel object) {
  return [];
}

void _medicineRegistryModelAttach(
    IsarCollection<dynamic> col, Id id, MedicineRegistryModel object) {
  object.id = id;
}

extension MedicineRegistryModelQueryWhereSort
    on QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QWhere> {
  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MedicineRegistryModelQueryWhere on QueryBuilder<MedicineRegistryModel,
    MedicineRegistryModel, QWhereClause> {
  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterWhereClause>
      idBetween(
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

extension MedicineRegistryModelQueryFilter on QueryBuilder<
    MedicineRegistryModel, MedicineRegistryModel, QFilterCondition> {
  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> dateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> dateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> dateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> dateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> medicineIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'medicineId',
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> medicineIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'medicineId',
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> medicineIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicineId',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> medicineIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medicineId',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> medicineIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medicineId',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel,
      QAfterFilterCondition> medicineIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medicineId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MedicineRegistryModelQueryObject on QueryBuilder<
    MedicineRegistryModel, MedicineRegistryModel, QFilterCondition> {}

extension MedicineRegistryModelQueryLinks on QueryBuilder<MedicineRegistryModel,
    MedicineRegistryModel, QFilterCondition> {}

extension MedicineRegistryModelQuerySortBy
    on QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QSortBy> {
  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      sortByMedicineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineId', Sort.asc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      sortByMedicineIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineId', Sort.desc);
    });
  }
}

extension MedicineRegistryModelQuerySortThenBy
    on QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QSortThenBy> {
  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      thenByMedicineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineId', Sort.asc);
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QAfterSortBy>
      thenByMedicineIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicineId', Sort.desc);
    });
  }
}

extension MedicineRegistryModelQueryWhereDistinct
    on QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QDistinct> {
  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<MedicineRegistryModel, MedicineRegistryModel, QDistinct>
      distinctByMedicineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medicineId');
    });
  }
}

extension MedicineRegistryModelQueryProperty on QueryBuilder<
    MedicineRegistryModel, MedicineRegistryModel, QQueryProperty> {
  QueryBuilder<MedicineRegistryModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MedicineRegistryModel, DateTime?, QQueryOperations>
      dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<MedicineRegistryModel, int?, QQueryOperations>
      medicineIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medicineId');
    });
  }
}
