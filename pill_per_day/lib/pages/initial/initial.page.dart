import 'package:flutter/material.dart';
import 'package:pill_per_day/routes/route_names.dart';
import 'package:pill_per_day/shared/widgets/page_button.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.medication_outlined,
                size: 128,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Bem vindo! Aqui você poderá gerenciar seus medicamentos.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black,
                    ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 3,
              ),
              PageButton(
                onTap: () {
                  Navigator.popAndPushNamed(context, RouteNames.home.routeName);
                },
                text: 'Começar',
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
