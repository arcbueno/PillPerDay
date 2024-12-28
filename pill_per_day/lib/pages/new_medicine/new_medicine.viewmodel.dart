import 'package:flutter/material.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/pages/new_medicine/new_medicine.state.dart';
import 'package:pill_per_day/repositories/medicine.repository.dart';

class NewMedicineViewModel {
  final MedicineRepository _repository;
  final ValueNotifier<NewMedicineState> state =
      ValueNotifier<NewMedicineState>(NewMedicineStateInit());

  Medicine _medicine =
      Medicine(name: '', frequencyHours: 0, limitDate: DateTime.now());

  NewMedicineViewModel(this._repository);

  void saveMedicine() {
    state.value = NewMedicineStateLoading();
    try {
      _repository.addMedicine(_medicine);
      state.value = NewMedicineStateSuccess();
    } catch (error) {
      state.value = NewMedicineStateError(error.toString());
    }
  }

  void setName(String name) {
    _medicine = _medicine.copyWith(name: name);
  }

  void setFrequencyHours(double frequencyHours) {
    _medicine = _medicine.copyWith(frequencyHours: frequencyHours);
  }

  void setLimitDate(DateTime limitDate) {
    _medicine = _medicine.copyWith(limitDate: limitDate);
  }

  void setObservations(String observations) {
    _medicine = _medicine.copyWith(observations: observations);
  }

  void setAlarmActive(bool alarmActive) {
    _medicine = _medicine.copyWith(alarmActive: alarmActive);
  }
}
