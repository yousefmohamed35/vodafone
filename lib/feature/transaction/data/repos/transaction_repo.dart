import '../models/transaction_model.dart';

abstract class TransactionRepo {
  List<TransactionModel> getAllTransaction();
}
