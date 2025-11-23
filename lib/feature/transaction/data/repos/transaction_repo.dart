import 'package:dartz/dartz.dart';
import 'package:vodafon/feature/transaction/data/models/transaction_api_model/transaction_api_model.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/transaction.dart';

import '../../../../core/error/failure/failure.dart';

abstract class TransactionRepo {
  List<Transaction> getAllTransaction();
  Future<Either<Failure, TransactionApiModel>> getTransactionFromApi();
}
