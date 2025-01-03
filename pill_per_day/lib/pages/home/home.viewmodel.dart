import 'package:flutter/material.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/models/medicine_registry.dart/medicine_registry.dart';
import 'package:pill_per_day/pages/home/home.state.dart';
import 'package:pill_per_day/repositories/medicine.repository.dart';
import 'package:pill_per_day/repositories/medicine_registry.repository.dart';
import 'package:pill_per_day/shared/utils/extensions.dart';

class HomeViewModel {
  final MedicineRepository _medicineRepository;
  final MedicineRegistryRepository _medicineRegistryRepository;

  ValueNotifier<HomeState> state = ValueNotifier(HomeStateLoading());

  HomeViewModel(this._medicineRepository, this._medicineRegistryRepository) {
    getAllData();
  }

  bool medicineAlreadyTaken(Medicine medicine) {
    if (this.state.value is! HomeStateLoaded) return false;

    final today = DateTime.now().getDay();
    final state = this.state.value as HomeStateLoaded;
    final takenMedicinesToday = state.medicineRegistries
        .where((element) =>
            element.medicineId == medicine.id && element.date.getDay() == today)
        .toList();
    // Se não tiver tomado nenhum remédio, retorna false
    if (takenMedicinesToday.isEmpty) return false;
    // Se não tiver tomado todos os remédios, retorna false
    if (takenMedicinesToday.length < medicine.hoursForTake.length) return false;
    // Se tiver tomado todos os remédios necessários até a hora atual, retorna true
    final now = DateTime.now();
    final pillsUntilNow = takenMedicinesToday
        .where((element) => element.date.isBefore(now))
        .toList();
    final hoursToTakeUntilNow = medicine.hoursForTake
        .where((element) => element.isBefore(now))
        .toList();
    if (pillsUntilNow.length >= hoursToTakeUntilNow.length) return true;

    return false;
  }

  Future<void> getAllData() async {
    state.value = HomeStateLoading();
    final data =
        await Future.wait([_getAllMedicines(), getAllMedicineRegistry()]);
    if (state is HomeStateError) return;
    state.value = HomeStateLoaded(
      medicineRegistries: data[1] as List<MedicineRegistry>,
      medicines: data[0] as List<Medicine>,
    );
  }

  Future<List<Medicine>> _getAllMedicines() async {
    try {
      final medicines = await _medicineRepository.getAllActiveMedicines();
      return medicines;
    } catch (e) {
      state.value = HomeStateError(e.toString());
      return [];
    }
  }

  Future<List<MedicineRegistry>> getAllMedicineRegistry() async {
    try {
      final registries =
          await _medicineRegistryRepository.getAllMedicinesRegistries();
      return registries;
    } catch (e) {
      state.value = HomeStateError(e.toString());
      return [];
    }
  }

  Future<void> takeMedicine(Medicine medicine) async {
    final now = DateTime.now();
    final registry = MedicineRegistry(
      date: now,
      medicineId: medicine.id!,
    );
    await _medicineRegistryRepository.addMedicineRegistry(registry);
    await getAllData();
  }

  Future<void> deleteMedicine(Medicine medicine) async {
    state.value = HomeStateLoading();
    await _medicineRepository.deactivateMedicine(medicine);
    await getAllData();
  }
}
