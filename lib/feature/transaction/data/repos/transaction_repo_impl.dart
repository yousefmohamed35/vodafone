import 'package:hive_flutter/hive_flutter.dart';
import 'package:vodafon/feature/transaction/data/models/transaction_model.dart';

import 'transaction_repo.dart';

class TransactionRepoImpl implements TransactionRepo {
  @override
  List<TransactionModel> getAllTransaction() {
    final box = Hive.box<TransactionModel>('transaction_box');
    return box.values.toList();
  }
}
