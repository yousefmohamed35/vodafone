import 'package:flutter/material.dart';
import '../../../data/models/trasnsaction_respone/transaction.dart';
import 'transaction_card.dart';

class TransactionCardListView extends StatelessWidget {
  const TransactionCardListView({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final transaction = transactions[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Column(
            children: [
              TransactionCard(
                transaction: transaction,
              ),
              const Divider(),
            ],
          ),
        );
      }, childCount: transactions.length),
    );
  }
}
