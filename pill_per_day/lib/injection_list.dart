import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
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
  final appDocDirectory = await getApplicationDocumentsDirectory();
  isar = await Isar.open(
    [MedicineModelSchema],
    directory: appDocDirectory.path,
  );
  return isar;
}
