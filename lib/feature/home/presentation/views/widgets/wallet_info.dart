import 'package:flutter/material.dart';
import 'package:vodafon/feature/home/presentation/views/widgets/balance_data.dart';
import 'package:vodafon/feature/home/presentation/views/widgets/cash_back.dart';

import 'custom_wallet_info_button.dart';

class WalletInfo extends StatelessWidget {
  const WalletInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [BalanceData(), Spacer(), CashBack()]),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: CustomWalletInfoButton(
                  text: 'my QR',
                  icon: Icons.qr_code,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: CustomWalletInfoButton(
                  text: 'My Transactions',
                  icon: Icons.list,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
