import 'package:isar/isar.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/models/medicine/medicine.model.dart';

class MedicineRepository {
  final Isar isar;

  MedicineRepository(this.isar);

  Future<void> addMedicine(Medicine medicine) async {
    final model = medicine.toModel();
    await isar.writeAsync((isar) {
      isar.medicineModels.put(model);
    });
  }

  Future<List<Medicine>> getAllMedicines() async {
    late final List<MedicineModel> models;
    await isar.readAsync((isar) {
      models = isar.medicineModels.where().findAll();
    });
    return models.map((model) => Medicine.fromModel(model)).toList();
  }
}
