import 'package:isar/isar.dart';

part 'medicine.model.g.dart';

@collection
class MedicineModel {
  @id
  late int isarId;
  String? name;
  double? frequencyHours;
  DateTime? limitDate;
  String? observations;
  bool? alarmActive;
}
