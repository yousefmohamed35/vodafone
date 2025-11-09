import 'package:flutter/material.dart';

import '../../../../../core/function/date_formate.dart';
import '../../../data/models/trasnsaction_respone/transaction.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: transaction.type == 'استلام' ? Colors.green : Colors.red,
        ),
        child: Icon(
          transaction.type == 'استلام'
              ? Icons.arrow_downward
              : Icons.arrow_upward,
          color: Colors.white,
        ),
      ),
      title: Text(
        '${transaction.type!} أموال',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            transaction.receiverName!.isNotEmpty
                ? transaction.receiverName!
                : transaction.phone!.replaceAll('002', ''),
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          if (transaction.fee != 0)
            Text(
              'رسوم العملية : ${transaction.fee} جنيه',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          Text(
            formatDateTime(parseTransactionDate(transaction.date!)!),
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
            transaction.type == 'استلام' ? Icons.add : Icons.remove,
            color: transaction.type == 'استلام' ? Colors.green : Colors.red,
            size: 20,
          ),
          Text(
            '${transaction.amount} جنيه',
            style: TextStyle(
              fontSize: 16,
              color: transaction.type == 'استلام' ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
