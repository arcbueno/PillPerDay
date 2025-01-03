import 'package:isar/isar.dart';

part 'medicine.model.g.dart';

@collection
class MedicineModel {
  Id id = Isar.autoIncrement;
  String? name;
  double? frequencyHours;
  DateTime? limitDate;
  String? observations;
  bool? alarmActive;
  bool? isActive;
}
