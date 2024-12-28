sealed class NewMedicineState {}

class NewMedicineStateInit extends NewMedicineState {}

class NewMedicineStateLoading extends NewMedicineState {}

class NewMedicineStateError extends NewMedicineState {
  final String message;
  NewMedicineStateError(this.message);
}

class NewMedicineStateSuccess extends NewMedicineState {}
