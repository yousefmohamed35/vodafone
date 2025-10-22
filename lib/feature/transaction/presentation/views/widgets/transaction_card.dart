import 'package:flutter/material.dart';

import '../../../data/models/transaction_model.dart';
import '../transaction_description_view.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.transaction,
    required this.name,
    required this.date,
    required this.transactionType,
    required this.amount,
  });

  final TransactionModel transaction;
  final String name;
  final String date;
  final bool transactionType;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                TransactionDescriptionView(transaction: transaction),
          ),
        );
      },
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: transaction.transactionTye == 'in' ? Colors.green : Colors.red,
        ),
        child: Icon(
          transaction.transactionTye == 'in'
              ? Icons.arrow_downward
              : Icons.arrow_upward,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 18,
          color: transaction.transactionTye == 'in' ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            transactionType ? 'الحالة: تم الاستلام' : 'الحالة: تم الارسال',
            style: TextStyle(
              fontSize: 14,
              color: transactionType ? Colors.green : Colors.red,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            transactionType ? Icons.add : Icons.remove,
            color: transaction.transactionTye == 'in'
                ? Colors.green
                : Colors.red,
            size: 20,
          ),
          Text(
            '$amount جنيه',
            style: TextStyle(
              fontSize: 16,
              color: transaction.transactionTye == 'in'
                  ? Colors.green
                  : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
