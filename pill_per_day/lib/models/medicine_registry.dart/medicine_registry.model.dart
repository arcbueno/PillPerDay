import 'package:isar/isar.dart';

part 'medicine_registry.model.g.dart';

@collection
class MedicineRegistryModel {
  Id id = Isar.autoIncrement;
  int? medicineId;
  DateTime? date;
}
