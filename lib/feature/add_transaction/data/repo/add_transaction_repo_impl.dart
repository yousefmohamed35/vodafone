import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:vodafon/core/error/utilies.dart';
import 'package:vodafon/core/services/dio_services/dio_services.dart';
import '../../../../core/error/exceptions/application_exception.dart';
import '../../../../core/error/failure/client_failure.dart';
import '../../../../core/error/failure/failure.dart';
import '../../../../core/helper/cashe_helper.dart';
import '../models/add_transaction_model.dart';
import 'add_transaction_repo.dart';

class AddTransactionRepoImpl extends AddTransactionRepo {
  final DioServices _dioServices;

  AddTransactionRepoImpl(this._dioServices);
  @override
  Future<Either<Failure, bool>> addTransaction({
    required AddTransactionModel transaction,
  }) async {
    try {
      final clientId = await SharedPrefHelper.getInt('client_id');
      await resolveOrThrow(
        () => _dioServices.postRequest(
          '/public/api/history',
          data: transaction.toJson()..addAll({'client_id': clientId}),
        ),
      );
      if (transaction.type == 'in') {
        await updateTotalAmount(
          amount: transaction.amount!.toDouble() + transaction.fee!.toDouble(),
          type: true,
        );
      } else {
        await updateTotalAmount(
          amount: transaction.amount!.toDouble() - transaction.fee!.toDouble(),
          type: false,
        );
      }

      return Right(true);
    } on ApplicationException catch (e) {
      return Left(await dioExceptionsDecoder(e));
    } catch (e) {
      return Left(ClientFailure.unknown(message: 'حدث خطأ ما'));
    }
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
