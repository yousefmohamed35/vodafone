import 'package:flutter/material.dart';

class TransactionBalanceAppBar extends StatelessWidget {
  const TransactionBalanceAppBar({super.key, required this.amount});
  final double amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.red, Color.fromARGB(255, 104, 5, 5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(
        'الرصيد الحالي: $amount جنيه',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
