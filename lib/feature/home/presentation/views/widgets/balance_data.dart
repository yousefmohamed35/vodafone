import 'package:flutter/material.dart';

class BalanceData extends StatelessWidget {
  const BalanceData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tab here to view',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        Text(
          'your balance',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
