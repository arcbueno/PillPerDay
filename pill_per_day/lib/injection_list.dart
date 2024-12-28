import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:pill_per_day/models/medicine/medicine.model.dart';
import 'package:pill_per_day/repositories/medicine.repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Future<List<SingleChildWidget>> getProviderList() async {
  final isar = await _initIsar();
  return <SingleChildWidget>[
    Provider(create: (_) => isar),
    Provider(
      create: (context) => MedicineRepository(context.read<Isar>()),
    ),
  ];
}

Future<Isar> _initIsar() async {
  Isar isar;
  if (kIsWeb) {
    // For web, make sure to initalize before
    await Isar.initialize();

    // Use sync methods
    isar = Isar.open(
      schemas: [MedicineModelSchema],
      directory: Isar.sqliteInMemory,
      engine: IsarEngine.sqlite,
    );
  } else {
    isar = Isar.open(
      schemas: [MedicineModelSchema],
      directory: '/',
    );
  }
  return isar;
}
