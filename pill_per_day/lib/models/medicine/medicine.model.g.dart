// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.model.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetMedicineModelCollection on Isar {
  IsarCollection<int, MedicineModel> get medicineModels => this.collection();
}

const MedicineModelSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'MedicineModel',
    idName: 'isarId',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'frequencyHours',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'limitDate',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'observations',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'alarmActive',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, MedicineModel>(
    serialize: serializeMedicineModel,
    deserialize: deserializeMedicineModel,
    deserializeProperty: deserializeMedicineModelProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeMedicineModel(IsarWriter writer, MedicineModel object) {
  {
    final value = object.name;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  IsarCore.writeDouble(writer, 2, object.frequencyHours ?? double.nan);
  IsarCore.writeLong(writer, 3,
      object.limitDate?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  {
    final value = object.observations;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.alarmActive;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeBool(writer, 5, value);
    }
  }
  return object.isarId;
}

@isarProtected
MedicineModel deserializeMedicineModel(IsarReader reader) {
  final object = MedicineModel();
  object.isarId = IsarCore.readId(reader);
  object.name = IsarCore.readString(reader, 1);
  {
    final value = IsarCore.readDouble(reader, 2);
    if (value.isNaN) {
      object.frequencyHours = null;
    } else {
      object.frequencyHours = value;
    }
  }
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      object.limitDate = null;
    } else {
      object.limitDate =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  object.observations = IsarCore.readString(reader, 4);
  {
    if (IsarCore.readNull(reader, 5)) {
      object.alarmActive = null;
    } else {
      object.alarmActive = IsarCore.readBool(reader, 5);
    }
  }
  return object;
}

@isarProtected
dynamic deserializeMedicineModelProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      {
        final value = IsarCore.readDouble(reader, 2);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 3:
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      {
        if (IsarCore.readNull(reader, 5)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 5);
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _MedicineModelUpdate {
  bool call({
    required int isarId,
    String? name,
    double? frequencyHours,
    DateTime? limitDate,
    String? observations,
    bool? alarmActive,
  });
}

class _MedicineModelUpdateImpl implements _MedicineModelUpdate {
  const _MedicineModelUpdateImpl(this.collection);

  final IsarCollection<int, MedicineModel> collection;

  @override
  bool call({
    required int isarId,
    Object? name = ignore,
    Object? frequencyHours = ignore,
    Object? limitDate = ignore,
    Object? observations = ignore,
    Object? alarmActive = ignore,
  }) {
    return collection.updateProperties([
          isarId
        ], {
          if (name != ignore) 1: name as String?,
          if (frequencyHours != ignore) 2: frequencyHours as double?,
          if (limitDate != ignore) 3: limitDate as DateTime?,
          if (observations != ignore) 4: observations as String?,
          if (alarmActive != ignore) 5: alarmActive as bool?,
        }) >
        0;
  }
}

sealed class _MedicineModelUpdateAll {
  int call({
    required List<int> isarId,
    String? name,
    double? frequencyHours,
    DateTime? limitDate,
    String? observations,
    bool? alarmActive,
  });
}

class _MedicineModelUpdateAllImpl implements _MedicineModelUpdateAll {
  const _MedicineModelUpdateAllImpl(this.collection);

  final IsarCollection<int, MedicineModel> collection;

  @override
  int call({
    required List<int> isarId,
    Object? name = ignore,
    Object? frequencyHours = ignore,
    Object? limitDate = ignore,
    Object? observations = ignore,
    Object? alarmActive = ignore,
  }) {
    return collection.updateProperties(isarId, {
      if (name != ignore) 1: name as String?,
      if (frequencyHours != ignore) 2: frequencyHours as double?,
      if (limitDate != ignore) 3: limitDate as DateTime?,
      if (observations != ignore) 4: observations as String?,
      if (alarmActive != ignore) 5: alarmActive as bool?,
    });
  }
}

extension MedicineModelUpdate on IsarCollection<int, MedicineModel> {
  _MedicineModelUpdate get update => _MedicineModelUpdateImpl(this);

  _MedicineModelUpdateAll get updateAll => _MedicineModelUpdateAllImpl(this);
}

sealed class _MedicineModelQueryUpdate {
  int call({
    String? name,
    double? frequencyHours,
    DateTime? limitDate,
    String? observations,
    bool? alarmActive,
  });
}

class _MedicineModelQueryUpdateImpl implements _MedicineModelQueryUpdate {
  const _MedicineModelQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<MedicineModel> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? frequencyHours = ignore,
    Object? limitDate = ignore,
    Object? observations = ignore,
    Object? alarmActive = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
      if (frequencyHours != ignore) 2: frequencyHours as double?,
      if (limitDate != ignore) 3: limitDate as DateTime?,
      if (observations != ignore) 4: observations as String?,
      if (alarmActive != ignore) 5: alarmActive as bool?,
    });
  }
}

extension MedicineModelQueryUpdate on IsarQuery<MedicineModel> {
  _MedicineModelQueryUpdate get updateFirst =>
      _MedicineModelQueryUpdateImpl(this, limit: 1);

  _MedicineModelQueryUpdate get updateAll =>
      _MedicineModelQueryUpdateImpl(this);
}

class _MedicineModelQueryBuilderUpdateImpl
    implements _MedicineModelQueryUpdate {
  const _MedicineModelQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<MedicineModel, MedicineModel, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? frequencyHours = ignore,
    Object? limitDate = ignore,
    Object? observations = ignore,
    Object? alarmActive = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
        if (frequencyHours != ignore) 2: frequencyHours as double?,
        if (limitDate != ignore) 3: limitDate as DateTime?,
        if (observations != ignore) 4: observations as String?,
        if (alarmActive != ignore) 5: alarmActive as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension MedicineModelQueryBuilderUpdate
    on QueryBuilder<MedicineModel, MedicineModel, QOperations> {
  _MedicineModelQueryUpdate get updateFirst =>
      _MedicineModelQueryBuilderUpdateImpl(this, limit: 1);

  _MedicineModelQueryUpdate get updateAll =>
      _MedicineModelQueryBuilderUpdateImpl(this);
}

extension MedicineModelQueryFilter
    on QueryBuilder<MedicineModel, MedicineModel, QFilterCondition> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      isarIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      isarIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      isarIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      isarIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      isarIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      isarIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      frequencyHoursBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      limitDateBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      observationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      alarmActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      alarmActiveIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterFilterCondition>
      alarmActiveEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }
}

extension MedicineModelQueryObject
    on QueryBuilder<MedicineModel, MedicineModel, QFilterCondition> {}

extension MedicineModelQuerySortBy
    on QueryBuilder<MedicineModel, MedicineModel, QSortBy> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByFrequencyHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByFrequencyHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByObservations(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByObservationsDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> sortByAlarmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      sortByAlarmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension MedicineModelQuerySortThenBy
    on QueryBuilder<MedicineModel, MedicineModel, QSortThenBy> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByFrequencyHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByFrequencyHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByObservations(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByObservationsDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy> thenByAlarmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterSortBy>
      thenByAlarmActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension MedicineModelQueryWhereDistinct
    on QueryBuilder<MedicineModel, MedicineModel, QDistinct> {
  QueryBuilder<MedicineModel, MedicineModel, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterDistinct>
      distinctByFrequencyHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterDistinct>
      distinctByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterDistinct>
      distinctByObservations({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicineModel, MedicineModel, QAfterDistinct>
      distinctByAlarmActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension MedicineModelQueryProperty1
    on QueryBuilder<MedicineModel, MedicineModel, QProperty> {
  QueryBuilder<MedicineModel, int, QAfterProperty> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<MedicineModel, String?, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MedicineModel, double?, QAfterProperty>
      frequencyHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MedicineModel, DateTime?, QAfterProperty> limitDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MedicineModel, String?, QAfterProperty> observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MedicineModel, bool?, QAfterProperty> alarmActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension MedicineModelQueryProperty2<R>
    on QueryBuilder<MedicineModel, R, QAfterProperty> {
  QueryBuilder<MedicineModel, (R, int), QAfterProperty> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<MedicineModel, (R, String?), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MedicineModel, (R, double?), QAfterProperty>
      frequencyHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MedicineModel, (R, DateTime?), QAfterProperty>
      limitDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MedicineModel, (R, String?), QAfterProperty>
      observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MedicineModel, (R, bool?), QAfterProperty>
      alarmActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension MedicineModelQueryProperty3<R1, R2>
    on QueryBuilder<MedicineModel, (R1, R2), QAfterProperty> {
  QueryBuilder<MedicineModel, (R1, R2, int), QOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<MedicineModel, (R1, R2, String?), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<MedicineModel, (R1, R2, double?), QOperations>
      frequencyHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<MedicineModel, (R1, R2, DateTime?), QOperations>
      limitDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<MedicineModel, (R1, R2, String?), QOperations>
      observationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<MedicineModel, (R1, R2, bool?), QOperations>
      alarmActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
