import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pill_per_day/pages/history/history.state.dart';
import 'package:pill_per_day/pages/history/history.viewmodel.dart';

class HistoryPage extends StatelessWidget {
  final HistoryViewModel viewModel;
  const HistoryPage({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    viewModel.getAllData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico'),
      ),
      body: ValueListenableBuilder(
        valueListenable: viewModel.state,
        builder: (context, state, child) {
          if (state is HistoryStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HistoryStateLoaded) {
            if (state.medicines.isEmpty) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.history_rounded,
                        size: 128,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Sem registros de medicamentos tomados ainda.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Nome',
                          style: Theme.of(context).textTheme.titleMedium),
                      Text('Quando tomou',
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListView.builder(
                    itemCount: state.medicineRegistries.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final medicineRegistry = state.medicineRegistries[index];
                      final medicineList = state.medicines
                          .where(
                            (element) =>
                                element.id == medicineRegistry.medicineId,
                          )
                          .toList();
                      if (medicineList.isEmpty) {
                        return const SizedBox.shrink();
                      }
                      final medicine = medicineList.first;
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  medicine.name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Column(
                                  children: [
                                    Text(
                                        DateFormat('dd/MM/yyyy')
                                            .format(medicineRegistry.date),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge),
                                    Text(
                                        DateFormat('HH:mm')
                                            .format(medicineRegistry.date),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          } else if (state is HistoryStateError) {
            return Center(
              child: SelectableText(state.message),
            );
          } else {
            return const Center(
              child: SelectableText('Unknown state'),
            );
          }
        },
      ),
    );
  }
}
