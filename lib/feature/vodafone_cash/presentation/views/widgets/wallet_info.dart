import 'package:flutter/material.dart';
import 'package:vodafon/core/widgets/custom_model_bottom_sheet.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/balance_data.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/cash_back.dart';
import '../../../../../core/helper/cashe_helper.dart';
import '../../../../transaction/presentation/views/transaction_view.dart';
import 'custom_wallet_info_button.dart';

class WalletInfo extends StatelessWidget {
  const WalletInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [BalanceData(), Spacer(), CashBack()]),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: CustomWalletInfoButton(
                  text: 'كود ال QR',
                  icon: Icons.qr_code,
                  onPressed: () {},
                  isLeft: false,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: CustomWalletInfoButton(
                  text: 'تاريخ المعاملات',
                  icon: Icons.list,
                  onPressed: () {
                    showCustomModalBottomSheet(
                      context,
                      onCompleted: (value) async {
                        Navigator.of(context).pop();
                        final amount =
                            await SharedPrefHelper.getAmount() ?? 0.0;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TransactionView(amount: amount),
                          ),
                        );
                      },
                    );
                  },
                  isLeft: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
