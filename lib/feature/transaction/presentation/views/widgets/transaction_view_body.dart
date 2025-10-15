import 'package:flutter/material.dart';
import '../../../data/models/transaction_model.dart';
import 'transaction_card_list_view.dart';

class TransactionViewBody extends StatelessWidget {
  const TransactionViewBody({super.key, required this.transactions});
  final List<TransactionModel> transactions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: transactions.isNotEmpty
          ? TransactionCardListView(
              transactions: transactions.reversed.toList(),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.no_transfer_outlined,
                    size: 100,
                    color: Colors.red,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'No transaction yet :( ',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
