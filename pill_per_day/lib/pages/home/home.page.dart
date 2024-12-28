import 'package:flutter/material.dart';
import 'package:pill_per_day/pages/home/home.state.dart';
import 'package:pill_per_day/pages/home/home.viewmodel.dart';
import 'package:pill_per_day/pages/home/widgets/empty_list.dart';
import 'package:pill_per_day/pages/home/widgets/filled_list.dart';
import 'package:pill_per_day/routes/route_names.dart';

class HomePage extends StatelessWidget {
  final HomeViewModel viewModel;
  const HomePage({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PillPerDay'),
      ),
      body: ValueListenableBuilder(
        valueListenable: viewModel.state,
        builder: (context, state, child) {
          if (state is HomeStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeStateLoaded) {
            if (state.medicines.isEmpty) {
              return EmptyList(onAdd: () => addMedicine(context));
            }
            return FilledList(
                onAdd: () => addMedicine(context), medicines: state.medicines);
          } else if (state is HomeStateError) {
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

  void addMedicine(BuildContext context) {
    Navigator.of(context).pushNamed(RouteNames.newMedicine.routeName).then(
          (_) => viewModel.getAllMedicines(),
        );
  }
}
