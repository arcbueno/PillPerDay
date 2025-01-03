import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/models/medicine_registry.dart/medicine_registry.dart';

sealed class HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateError extends HomeState {
  final String message;

  HomeStateError(this.message);
}

class HomeStateLoaded extends HomeState {
  final List<Medicine> medicines;
  final List<MedicineRegistry> medicineRegistries;

  HomeStateLoaded(
      {this.medicines = const [], this.medicineRegistries = const []});
}
