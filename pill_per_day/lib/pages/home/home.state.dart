import 'package:pill_per_day/models/medicine/medicine.dart';

sealed class HomeState {}

class HomeStateLoading extends HomeState {}

class HomeStateError extends HomeState {
  final String message;

  HomeStateError(this.message);
}

class HomeStateLoaded extends HomeState {
  final List<Medicine> medicines;

  HomeStateLoaded(this.medicines);
}
