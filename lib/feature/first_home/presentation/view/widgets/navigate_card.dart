import 'package:flutter/material.dart';

import '../../../data/models/navigate_card_model.dart';

class NavigationCard extends StatelessWidget {
  const NavigationCard({super.key, required this.cardModel, this.onTap});
  final NavigationCardModel cardModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 140,
        height: 200,
        child: Card(
          color: cardModel.color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(radius: 30, child: Icon(cardModel.icon, size: 30)),
              SizedBox(height: 20),
              Text(
                cardModel.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
