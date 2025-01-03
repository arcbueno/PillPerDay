import 'package:isar/isar.dart';
import 'package:pill_per_day/models/medicine_registry.dart/medicine_registry.model.dart';

class MedicineRegistry {
  final Id? id;
  final int medicineId;
  final DateTime date;
  MedicineRegistry({
    this.id,
    required this.medicineId,
    required this.date,
  });

  MedicineRegistry copyWith({
    Id? id,
    int? medicineId,
    DateTime? date,
  }) {
    return MedicineRegistry(
      id: id ?? this.id,
      medicineId: medicineId ?? this.medicineId,
      date: date ?? this.date,
    );
  }

  factory MedicineRegistry.fromModel(MedicineRegistryModel model) {
    return MedicineRegistry(
      id: model.id,
      medicineId: model.medicineId!,
      date: model.date!,
    );
  }

  MedicineRegistryModel toModel() {
    var model = MedicineRegistryModel()
      ..medicineId = medicineId
      ..date = date;

    if (id != null) {
      model.id = id!;
    }
    return model;
  }
}
