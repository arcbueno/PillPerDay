import 'package:pill_per_day/models/medicine/medicine.model.dart';

class Medicine {
  final int? id;
  final String name;
  final double frequencyHours;
  final DateTime limitDate;
  final String observations;
  final bool alarmActive;

  Medicine({
    this.id,
    required this.name,
    required this.frequencyHours,
    required this.limitDate,
    this.observations = '',
    this.alarmActive = false,
  });

  factory Medicine.fromModel(MedicineModel model) {
    return Medicine(
      id: model.isarId,
      name: model.name!,
      frequencyHours: model.frequencyHours!,
      limitDate: model.limitDate!,
      observations: model.observations!,
      alarmActive: model.alarmActive!,
    );
  }

  MedicineModel toModel() {
    var model = MedicineModel()
      ..name = name
      ..frequencyHours = frequencyHours
      ..limitDate = limitDate
      ..observations = observations
      ..alarmActive = alarmActive;

    if (id != null) {
      model.isarId = id!;
    }
    return model;
  }
}
