import 'package:flutter/material.dart';
import 'package:vodafon/feature/transaction/presentation/views/transaction_description_view.dart';

import '../../../data/models/transaction_model.dart';

class TransactionCardListView extends StatelessWidget {
  const TransactionCardListView({super.key, required this.transactions});

  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        String date = '';
        String name = '';
        if (transaction.transactionTye == 'in') {
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
          name = 'From You';
        }
        return Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TransactionDescriptionView(transaction: transaction,),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundColor: transaction.transactionTye == 'in'
                  ? Colors.green
                  : Colors.red,
              child: Text(
                transaction.transactionTye == 'in' ? 'in' : 'out',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(
              name,
              style: TextStyle(
                fontSize: 18,
                color: transaction.transactionTye == 'in'
                    ? Colors.green
                    : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              date,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              transaction.transactionTye == 'in'
                  ? Icons.arrow_upward
                  : Icons.arrow_downward,
              color: transaction.transactionTye == 'in'
                  ? Colors.green
                  : Colors.red,
            ),
          ),
        );
      },
    );
  }
}
