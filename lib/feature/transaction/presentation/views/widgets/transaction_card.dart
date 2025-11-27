import 'package:flutter/material.dart';
import '../../../../../core/function/date_formate.dart';
import '../../../data/models/transaction_api_model/history.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transaction});

  final History transaction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: transaction.type == 'in' ? Colors.green : Colors.red,
        ),
        child: Image.asset(
          transaction.type == 'in' ? 'assets/transfer.png' : 'assets/out.png',
          color: Colors.white,
        ),
      ),
      title: Text(
        transaction.type == 'in' ? 'استلام أموال' : 'تحويل أموال',
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
            transaction.name ?? '--',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),

          Text(
            formatDateTime(
              parseTransactionDate(
                transaction.time ?? transaction.createdAt!.toIso8601String(),
              )!,
            ),
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
            transaction.type == 'in' ? Icons.add : Icons.remove,
            color: transaction.type == 'in' ? Colors.green : Colors.red,
            size: 20,
          ),
          Text(
            '${transaction.amount} جنيه',
            style: TextStyle(
              fontSize: 16,
              color: transaction.type == 'in' ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
