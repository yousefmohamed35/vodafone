import 'package:flutter/material.dart';
import 'package:vodafon/feature/home/presentation/views/widgets/auto_scroll_banner.dart';

import 'wallet_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Vodafon',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            AutoScrollBanner(),
            SizedBox(height: 20),
            WalletInfo(),
          ],
        ),
      ),
    );
  }
}
