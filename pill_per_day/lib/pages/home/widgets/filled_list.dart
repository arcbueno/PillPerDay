import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pill_per_day/models/medicine/medicine.dart';
import 'package:pill_per_day/pages/home/widgets/medicine_list_tile.dart';

class FilledList extends StatelessWidget {
  final Function() onAdd;
  final List<Medicine> medicines;
  final Function(Medicine) isAlreadyTaken;
  final Function(Medicine) onTap;
  final Function(Medicine) onDelete;
  const FilledList({
    super.key,
    required this.onAdd,
    required this.medicines,
    required this.isAlreadyTaken,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Remedios cadastrados: ',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Já tomou hoje?',
                  style: Theme.of(context).textTheme.titleMedium),
              Text('Remover', style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          ListView.builder(
            itemCount: medicines.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final medicine = medicines[index];
              return MedicineListTile(
                medicine: medicine,
                onTap: () => onTap(medicine),
                alreadyTaken: isAlreadyTaken(medicine),
                onDelete: () => onDelete(medicine),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99),
                    ),
                  ),
                  onPressed: onAdd,
                  label: const Text('Adicionar remédio'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
