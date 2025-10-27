import 'package:flutter/material.dart';
import '../../data/models/navigate_card_model.dart';
import 'widgets/navigate_card.dart';

class FirstHome extends StatelessWidget {
  const FirstHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationCard(cardModel: navigationCards[0]),
              SizedBox(width: 10),
              NavigationCard(cardModel: navigationCards[1]),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationCard(cardModel: navigationCards[2]),
              SizedBox(width: 10),
              NavigationCard(cardModel: navigationCards[3]),
            ],
          ),
        ],
      ),
    );
  }
}
