import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/trasnsaction_respone.dart';

import '../models/trasnsaction_respone/transaction.dart';
import 'transaction_repo.dart';

class TransactionRepoImpl implements TransactionRepo {
  @override
  List<Transaction> getAllTransaction() {
    final box = Hive.box<TransactionResponse>('transaction_response_box');
    final allTransactions = <Transaction>[];
    for (final response in box.values) {
      allTransactions.addAll(response.transactions ?? []);
      log(response.toString());
    }
    return allTransactions;
  }
}
