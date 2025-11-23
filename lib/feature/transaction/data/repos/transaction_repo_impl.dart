import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vodafon/feature/transaction/data/models/transaction_api_model/transaction_api_model.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/trasnsaction_respone.dart';

import '../../../../core/error/exceptions/application_exception.dart';
import '../../../../core/error/failure/client_failure.dart';
import '../../../../core/error/failure/failure.dart';
import '../../../../core/error/utilies.dart';
import '../../../../core/helper/cashe_helper.dart';
import '../../../../core/services/dio_services/dio_services.dart';
import '../models/trasnsaction_respone/transaction.dart';
import 'transaction_repo.dart';

class TransactionRepoImpl implements TransactionRepo {
   final DioServices dio;

  TransactionRepoImpl(this.dio);
  @override
  List<Transaction> getAllTransaction() {
    final box = Hive.box<TransactionResponse>('transaction_response_box');
    final allTransactions = <Transaction>[];
    for (final response in box.values) {
      allTransactions.addAll(response.transactions ?? []);
      log(response.toString());
    }
    return allTransactions;
  }

  @override
   Future<Either<Failure, TransactionApiModel>> getTransactionFromApi() async{
   try {
    final id = await SharedPrefHelper.getInt('client_id');
   final response = await resolveOrThrow(
        () => dio.getRequest("/public/api/clients/$id"),
      );
      final data = TransactionApiModel.fromJson(response.data);

     return Right(data);
   } on ApplicationException catch (e) {
      return Left(await dioExceptionsDecoder(e));
    } catch (e) {
      return Left(ClientFailure.unknown(message: 'حدث خطأ ما'));
    }
  }
}
