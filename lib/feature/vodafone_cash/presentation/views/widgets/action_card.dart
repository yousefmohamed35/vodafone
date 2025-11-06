import 'package:flutter/material.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/wallet_actions.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({super.key, required this.card});
  final CardData card;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(card.image, width: 50),
            const SizedBox(height: 8),
            Text(
              card.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
