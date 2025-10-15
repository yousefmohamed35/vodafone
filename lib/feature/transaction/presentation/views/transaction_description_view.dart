import 'package:flutter/material.dart';
import 'package:vodafon/feature/transaction/presentation/views/widgets/transaction_description_view_body.dart';

import '../../data/models/transaction_model.dart';

class TransactionDescriptionView extends StatelessWidget {
  const TransactionDescriptionView({super.key, required this.transaction});
  final TransactionModel transaction;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: TransactionDescriptionViewBody(transaction: transaction),
    );
  }
}
