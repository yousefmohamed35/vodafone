import '../../../transaction/data/models/trasnsaction_respone/trasnsaction_respone.dart';

abstract class AddTransactionRepo {
  Future<void> addTransaction({
    required TransactionResponse transaction,
    required double amount,
  });
}
