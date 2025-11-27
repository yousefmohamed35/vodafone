import 'package:flutter/material.dart';
import '../../../data/models/transaction_api_model/transaction_api_model.dart';
import 'sliver_dileget_app_bar.dart';
import 'transaction_card_list_view.dart';

class TransactionViewBody extends StatelessWidget {
  const TransactionViewBody({super.key, required this.transactionHistories});
  final TransactionApiModel transactionHistories;

  @override
  Widget build(BuildContext context) {
    return transactionHistories.data!.histories!.isNotEmpty
        ? CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: SliverAppBarDelegate(
                  amount: double.parse(transactionHistories.data!.balance!),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  // height: 100,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.error_outline, color: Colors.black),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'عرض المعاملات للشهر الماضي فقط. لعرض المزيد من المعاملات السابقة. يرجي تحديد نطاق تاريخ معين',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TransactionCardListView(
                transactions: transactionHistories.data!.histories!,
              ),
            ],
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.no_transfer_outlined, size: 100, color: Colors.red),
                SizedBox(height: 20),
                Text(
                  'لا يوجد معاملات..)',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
  }
}
