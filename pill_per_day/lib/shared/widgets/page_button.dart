import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Icon? icon;
  const PageButton(
      {super.key, required this.onTap, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 2,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
          ),
        ),
        onPressed: onTap,
        icon: icon,
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
