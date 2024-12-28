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

  Future<List<Medicine>> getAllMedicines() async {
    List<MedicineModel> models = [];
    models = await isar.medicineModels.where().findAll();

    return models.map((model) => Medicine.fromModel(model)).toList();
  }
}
