import 'package:isar/isar.dart';
import 'package:pill_per_day/models/medicine/medicine.model.dart';

class Medicine {
  final Id? id;
  final String name;
  final double frequencyHours;
  final DateTime limitDate;
  final String observations;
  final bool alarmActive;
  final bool isActive;

  Medicine({
    this.id,
    required this.name,
    required this.frequencyHours,
    required this.limitDate,
    this.observations = '',
    this.alarmActive = false,
    this.isActive = true,
  });

  int get quantityOfPillsPerDay {
    return (24 / frequencyHours).floor();
  }

  List<DateTime> get hoursForTake {
    final List<DateTime> hours = [];
    for (var i = 0; i < quantityOfPillsPerDay; i++) {
      hours.add(limitDate.add(Duration(hours: (i * frequencyHours).toInt())));
    }
    return hours;
  }

  factory Medicine.fromModel(MedicineModel model) {
    return Medicine(
      id: model.id,
      name: model.name!,
      frequencyHours: model.frequencyHours!,
      limitDate: model.limitDate!,
      observations: model.observations!,
      alarmActive: model.alarmActive!,
      isActive: model.isActive ?? true,
    );
  }

  MedicineModel toModel() {
    var model = MedicineModel()
      ..name = name
      ..frequencyHours = frequencyHours
      ..limitDate = limitDate
      ..observations = observations
      ..alarmActive = alarmActive
      ..isActive = isActive;

    if (id != null) {
      model.id = id!;
    }
    return model;
  }

  Medicine copyWith({
    Id? id,
    String? name,
    double? frequencyHours,
    DateTime? limitDate,
    String? observations,
    bool? alarmActive,
    bool? isActive,
  }) {
    return Medicine(
      id: id ?? this.id,
      name: name ?? this.name,
      frequencyHours: frequencyHours ?? this.frequencyHours,
      limitDate: limitDate ?? this.limitDate,
      observations: observations ?? this.observations,
      alarmActive: alarmActive ?? this.alarmActive,
      isActive: isActive ?? this.isActive,
    );
  }
}
