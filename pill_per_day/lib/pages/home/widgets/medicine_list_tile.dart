import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';

class MedicineListTile extends StatelessWidget {
  final Medicine medicine;
  final Function() onTap;
  final bool alreadyTaken;
  final Function() onDelete;
  const MedicineListTile({
    super.key,
    required this.medicine,
    required this.onTap,
    required this.onDelete,
    this.alreadyTaken = false,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: (_) {
        if (alreadyTaken) return;
        onTap();
      },
      value: alreadyTaken,
      controlAffinity: ListTileControlAffinity.leading,
      title: Row(
        children: [
          Text(
            medicine.name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Spacer(),
          IconButton(onPressed: onDelete, icon: const Icon(Icons.delete)),
        ],
      ),
      subtitle:
          Text('Até ${DateFormat('dd/MM/yyyy').format(medicine.limitDate)}'),
    );
  }
}
