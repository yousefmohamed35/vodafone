import 'package:flutter/material.dart';

import '../../../../../core/function/date_formate.dart';
import '../../../data/models/trasnsaction_respone/transaction.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.transaction,
  });

  final Transaction transaction;
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8),
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) =>
        //         TransactionDescriptionView(transaction: transaction),
        //   ),
        // );
      },
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
        transaction.receiverName!,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 18,
          color: transaction.type == 'استلام' ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
           transaction.type == 'استلام'  ? 'الحالة: تم الاستلام' : 'الحالة: تم الارسال',
            style: TextStyle(
              fontSize: 14,
              color: transaction.type == 'استلام'? Colors.green : Colors.red,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            formatDateTime(parseTransactionDate(transaction.date!)!),
            style: const TextStyle(
              fontSize: 12,
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
            color:transaction.type == 'استلام'
                ? Colors.green
                : Colors.red,
            size: 20,
          ),
          Text(
            '${transaction.amount} جنيه',
            style: TextStyle(
              fontSize: 16,
              color: transaction.type == 'استلام' 
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
