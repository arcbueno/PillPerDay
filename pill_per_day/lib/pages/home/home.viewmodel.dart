import 'package:flutter/material.dart';
import 'package:pill_per_day/pages/home/home.state.dart';
import 'package:pill_per_day/repositories/medicine.repository.dart';

class HomeViewModel {
  final MedicineRepository _medicineRepository;

  ValueNotifier<HomeState> state = ValueNotifier(HomeStateLoading());

  HomeViewModel(this._medicineRepository) {
    getAllMedicines();
  }

  Future<void> getAllMedicines() async {
    state.value = HomeStateLoading();
    try {
      final medicines = await _medicineRepository.getAllMedicines();
      state.value = HomeStateLoaded(medicines);
    } catch (e) {
      state.value = HomeStateError(e.toString());
    }
  }
}
