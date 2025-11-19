import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(child: Divider(thickness: 1.5)),

        Text(
          'أو',
          style: TextTheme.of(
            context,
          ).labelLarge?.copyWith(fontSize: 18, fontWeight: FontWeight.w900),
        ),
        Expanded(child: Divider(thickness: 1.5)),
      ],
    );
  }
}
