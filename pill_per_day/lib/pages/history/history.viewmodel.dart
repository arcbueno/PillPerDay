import 'package:flutter/material.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/models/medicine_registry.dart/medicine_registry.dart';
import 'package:pill_per_day/pages/history/history.state.dart';
import 'package:pill_per_day/repositories/medicine.repository.dart';
import 'package:pill_per_day/repositories/medicine_registry.repository.dart';

class HistoryViewModel {
  final MedicineRepository _medicineRepository;
  final MedicineRegistryRepository _medicineRegistryRepository;

  final ValueNotifier<HistoryState> state =
      ValueNotifier(HistoryStateLoading());

  HistoryViewModel(this._medicineRepository, this._medicineRegistryRepository);

  Future<void> getAllData() async {
    state.value = HistoryStateLoading();
    final data =
        await Future.wait([_getAllMedicines(), getAllMedicineRegistry()]);
    if (state is HistoryStateError) return;
    state.value = HistoryStateLoaded(
      medicineRegistries: data[1] as List<MedicineRegistry>,
      medicines: data[0] as List<Medicine>,
    );
  }

  Future<List<Medicine>> _getAllMedicines() async {
    try {
      final medicines = await _medicineRepository.getAllMedicines();
      return medicines;
    } catch (e) {
      state.value = HistoryStateError(e.toString());
      return [];
    }
  }

  Future<List<MedicineRegistry>> getAllMedicineRegistry() async {
    try {
      final registries =
          await _medicineRegistryRepository.getAllMedicinesRegistries();
      return registries;
    } catch (e) {
      state.value = HistoryStateError(e.toString());
      return [];
    }
  }

  Future<void> deleteMedicine(Medicine medicine) async {
    state.value = HistoryStateLoading();
    await _medicineRepository.deactivateMedicine(medicine);
    await getAllData();
  }
}
