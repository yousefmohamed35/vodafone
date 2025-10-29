import '../../../transaction/data/models/transaction_model.dart';

abstract class AddTransactionRepo {
  Future<void> addTransaction({required TransactionModel transactionModel,required double amount});
}