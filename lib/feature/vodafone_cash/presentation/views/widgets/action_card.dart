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
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[300],
              child: Image.asset(card.image, width: 50),
            ),
            Text(
              card.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
