import 'package:flutter/material.dart';
import '../../../data/models/transaction_model.dart';
import 'transaction_card.dart';

class TransactionCardListView extends StatelessWidget {
  const TransactionCardListView({super.key, required this.transactions});

  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final transaction = transactions[index];
        final bool transactionType = transaction.transactionTye == 'in';
        String date = '';
        String name = '';
        String amount = '';

        if (transactionType) {
          date = transaction.extractedData
              .firstWhere((val) => val.keyAr == 'تاريخ المعاملة')
              .value;
          name = transaction.extractedData
              .firstWhere((val) => val.keyAr == 'اسم المرسل')
              .value;
        } else {
          date = transaction.extractedData
              .firstWhere((val) => val.keyAr == 'التاريخ')
              .value;

          name = transaction.extractedData
              .firstWhere((val) => val.keyAr == 'اسم المستقبل')
              .value;
        }
        amount = transaction.extractedData
            .firstWhere((val) => val.keyAr == 'المبلغ الكلي')
            .value
            .replaceAll(RegExp(r'[^0-9]'), '');

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Column(
            children: [
              TransactionCard(
                transaction: transaction,
                name: name,
                date: date,
                transactionType: transactionType,
                amount: amount,
              ),
              const Divider(),
            ],
          ),
        );
      }, childCount: transactions.length),
    );
  }
}
