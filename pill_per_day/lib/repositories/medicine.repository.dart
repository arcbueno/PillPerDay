import 'package:isar/isar.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/models/medicine/medicine.model.dart';

class MedicineRepository {
  final Isar isar;

  MedicineRepository(this.isar);

  Future<void> addMedicine(Medicine medicine) async {
    final model = medicine.toModel();
    await isar.writeTxn(() async {
      isar.medicineModels.put(model);
    });
  }

  Future<List<Medicine>> getAllActiveMedicines() async {
    List<MedicineModel> models = [];
    models = await isar.medicineModels.filter().isActiveEqualTo(true).findAll();

    return models.map((model) => Medicine.fromModel(model)).toList();
  }

  Future<void> updateMedicine(Medicine medicine) async {
    final model = medicine.toModel();
    await isar.writeTxn(() async {
      isar.medicineModels.put(model);
    });
  }

  Future<void> deactivateMedicine(Medicine medicine) async {
    final deactivated = medicine.copyWith(isActive: false);
    final model = deactivated.toModel();
    await isar.writeTxn(() async {
      isar.medicineModels.put(model);
    });
  }
}
