import 'package:isar/isar.dart';
import 'package:pill_per_day/models/medicine_registry.dart/medicine_registry.dart';
import 'package:pill_per_day/models/medicine_registry.dart/medicine_registry.model.dart';

class MedicineRegistryRepository {
  final Isar isar;

  MedicineRegistryRepository(this.isar);

  Future<void> addMedicineRegistry(MedicineRegistry medicine) async {
    final model = medicine.toModel();
    await isar.writeTxn(() async {
      isar.medicineRegistryModels.put(model);
    });
  }

  Future<List<MedicineRegistry>> getAllMedicinesRegistries() async {
    List<MedicineRegistryModel> models = [];
    models = await isar.medicineRegistryModels.where().findAll();

    return models.map((model) => MedicineRegistry.fromModel(model)).toList();
  }
}
