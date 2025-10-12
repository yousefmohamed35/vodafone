import 'package:flutter/material.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';

class BalanceData extends StatefulWidget {
  const BalanceData({super.key});

  @override
  State<BalanceData> createState() => _BalanceDataState();
}

class _BalanceDataState extends State<BalanceData> {
  bool getBalance = false;
  double balance = 0;
  @override
  void initState() {
    // upload balance

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!getBalance) {
          final getAmount = await SharedPrefHelper.getAmount();
          balance = getAmount ?? 0;
          setState(() {
            getBalance = true;
          });
        } else {
          return;
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getBalance ? 'You have in your wallet' : 'Tab here to view',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          Text(
            getBalance
                ? '$balance LE'
                : 'your balance', //'$balance.toString() : 'your balance',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
