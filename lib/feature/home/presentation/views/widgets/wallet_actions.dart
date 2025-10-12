import 'package:flutter/material.dart';

import 'action_card.dart';

class WalletActions extends StatelessWidget {
  const WalletActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ActionCard(), ActionCard(), ActionCard(), ActionCard()],
    );
  }
}
