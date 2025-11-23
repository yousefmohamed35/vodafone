import 'package:flutter/material.dart';
import 'package:vodafon/feature/ads/presentation/view/ads_view.dart';
import 'package:vodafon/feature/home/presentation/view/home_view.dart';
import '../../../add_transaction/presentation/view/add_transaction_view.dart';
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
              NavigationCard(
                cardModel: navigationCards[0],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
              ),
              SizedBox(width: 10),
              NavigationCard(
                cardModel: navigationCards[1],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdsView()),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationCard(
                cardModel: navigationCards[2],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddTransactionView(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
