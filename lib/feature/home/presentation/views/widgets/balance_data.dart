import 'package:flutter/material.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'package:vodafon/core/widgets/custom_model_bottom_sheet.dart';

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
      onTap: () {
        if (!getBalance) {
          showCustomModalBottomSheet(
            context,
            onCompleted: (value) async {
              Navigator.of(context).pop();
              final getAmount = await SharedPrefHelper.getAmount();
              balance = getAmount ?? 0;

              setState(() {
                getBalance = true;
              });
            },
          );
        } else {
          return;
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getBalance ? 'لديك في محفظتك' : 'اضغط هنا لاظهار',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            getBalance
                ? '$balance جنيه'
                : 'رصيدك', //'$balance.toString() : 'your balance',
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
