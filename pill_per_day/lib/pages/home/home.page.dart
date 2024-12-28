import 'package:flutter/material.dart';
import 'package:pill_per_day/pages/home/home.viewmodel.dart';

class HomePage extends StatelessWidget {
  final HomeViewModel viewModel;
  const HomePage({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PillPerDay'),
      ),
      body: const Placeholder(),
    );
  }
}
