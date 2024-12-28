import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';

class FilledList extends StatelessWidget {
  final Function() onAdd;
  final List<Medicine> medicines;
  const FilledList({super.key, required this.onAdd, required this.medicines});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Remedios cadastrados: '),
        ListView.builder(
          itemCount: medicines.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final medicine = medicines[index];
            return ListTile(
              title: Text(medicine.name),
              subtitle: Text(medicine.limitDate.toString()),
            );
          },
        ),
      ],
    );
  }
}
