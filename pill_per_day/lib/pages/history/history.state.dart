import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/models/medicine_registry.dart/medicine_registry.dart';

sealed class HistoryState {}

class HistoryStateLoaded extends HistoryState {
  final List<Medicine> medicines;
  final List<MedicineRegistry> medicineRegistries;

  HistoryStateLoaded(
      {this.medicines = const [], this.medicineRegistries = const []});
}

class HistoryStateLoading extends HistoryState {}

class HistoryStateError extends HistoryState {
  final String message;

  HistoryStateError(this.message);
}
