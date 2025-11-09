import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/transaction.dart';


abstract class TransactionRepo {
  List<Transaction> getAllTransaction();
}
