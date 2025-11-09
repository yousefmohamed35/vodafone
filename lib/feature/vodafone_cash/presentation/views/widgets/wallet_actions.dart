import 'package:flutter/material.dart';

import 'action_card.dart';

class WalletActions extends StatelessWidget {
  const WalletActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16,
      children: List.generate(cards.length, (index) {
        return ActionCard(card: cards[index]);
      }),
    );
  }
}

final List<CardData> cards = [
  CardData(image: 'assets/exchange.png', title: 'تحويل\n أموال'),
  CardData(image: "assets/mobile.png", title: "شحن\n الرصيد"),
  CardData(image: "assets/flex.png", title: "تجديد\n فليكس"),
];

class CardData {
  final String image;
  final String title;

  CardData({required this.image, required this.title});
}
