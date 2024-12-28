import 'package:flutter/material.dart';
import 'package:pill_per_day/shared/widgets/page_button.dart';

class EmptyList extends StatelessWidget {
  final Function() onAdd;
  const EmptyList({
    super.key,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            const Icon(
              Icons.medication_outlined,
              size: 128,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Nenhum remédio cadastrado ainda, adicione um novo agora mesmo!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 4,
            ),
            PageButton(
              onTap: onAdd,
              text: 'Novo',
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
