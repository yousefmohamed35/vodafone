import 'package:flutter/material.dart';
import 'package:vodafon/feature/transaction/data/models/transaction_model.dart';
import 'package:vodafon/feature/transaction/presentation/views/widgets/transaction_reciept_detailes.dart';

class TransactionDescriptionViewBody extends StatelessWidget {
  const TransactionDescriptionViewBody({super.key, required this.transaction});
  final TransactionModel transaction;
  @override
  Widget build(BuildContext context) {
    final bool transactionType = transaction.transactionTye == 'in';
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Card(
            color: Colors.grey[200],
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    transactionType ? 'Recieved' : 'Send',
                    style: TextStyle(
                      color: transactionType ? Colors.green : Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),
                  TransactionRecieptDetailes(
                    extractedData: transaction.extractedData,
                  ),
                  Text(
                    "Thank you for using our service!",
                    style: TextStyle(
                      color: transactionType
                          ? Colors.green[700]
                          : Colors.red[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
