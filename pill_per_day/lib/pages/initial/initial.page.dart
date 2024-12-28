import 'package:flutter/material.dart';
import 'package:pill_per_day/routes/route_names.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Text(
              'Bem vindo! Aqui você poderá gerenciar seus medicamentos.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, RouteNames.home.routeName);
            },
            child: const Text('Começar'),
          ),
        ],
      ),
    );
  }
}
