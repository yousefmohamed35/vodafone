import 'package:dartz/dartz.dart';
import 'package:vodafon/core/error/failure/failure.dart';

import '../models/add_transaction_model.dart';

abstract class AddTransactionRepo {
  Future<Either<Failure,bool>> addTransaction({
    required AddTransactionModel transaction,
    
  });
}
