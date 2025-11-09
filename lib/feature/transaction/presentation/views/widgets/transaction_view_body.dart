import 'package:flutter/material.dart';
import '../../../data/models/trasnsaction_respone/transaction.dart';
import 'sliver_dileget_app_bar.dart';
import 'transaction_card_list_view.dart';

class TransactionViewBody extends StatelessWidget {
  const TransactionViewBody({
    super.key,
    required this.transactions,
    required this.amount,
  });
  final List<Transaction> transactions;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return transactions.isNotEmpty
        ? CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: SliverAppBarDelegate(amount: amount),
              ),
              TransactionCardListView(transactions: transactions),
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
