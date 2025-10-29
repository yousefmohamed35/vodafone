import 'dart:developer';

import 'package:hive/hive.dart';

import '../../../../core/helper/cashe_helper.dart';
import '../../../transaction/data/models/transaction_model.dart';
import 'add_transaction_repo.dart';

class AddTransactionRepoImpl extends AddTransactionRepo {
  @override
  Future<void> addTransaction({
    required TransactionModel transactionModel,
    required double amount,
  }) async {
    final box = Hive.box<TransactionModel>('transaction_box');
    await box.add(transactionModel);
    await updateTotalAmount(
      amount: amount,
      type: transactionModel.transactionTye == 'in',
    );
  }

  Future<void> updateTotalAmount({
    required double amount,
    required bool type,
  }) async {
    try {
      final value = await SharedPrefHelper.getAmount();
      if (value != null) {
        final newAmount = type ? value + amount : value - amount;
        await SharedPrefHelper.saveAmount(newAmount);
        log('Total amount updated to $newAmount');
      } else {
        log('No previous amount found, initializing...');
        await SharedPrefHelper.saveAmount(amount);
      }
    } catch (e) {
      log('Error while updating total amount: $e');
    }
  }
}
