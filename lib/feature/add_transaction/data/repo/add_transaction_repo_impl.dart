import 'dart:developer';
import 'package:hive/hive.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/trasnsaction_respone.dart';
import '../../../../core/helper/cashe_helper.dart';
import 'add_transaction_repo.dart';

class AddTransactionRepoImpl extends AddTransactionRepo {
  @override
  Future<void> addTransaction({
    required TransactionResponse transaction,
    required double amount,
  }) async {
    final box = Hive.box<TransactionResponse>('transaction_response_box');
    await box.add(transaction);
    await updateTotalAmount(
      amount: amount,
      type: transaction.transactions![0].type == 'استلام',
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
