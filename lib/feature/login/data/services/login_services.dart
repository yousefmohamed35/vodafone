import 'package:dartz/dartz.dart';
import 'package:vodafon/core/error/failure/failure.dart';
import 'package:vodafon/feature/login/data/models/login_model/login_model.dart';

abstract class LoginServices {
  Future<Either<Failure, LoginModel>> loginWithPhone({required String phone});
  Future<Either<Failure, bool>> signUp({
    required String phone,
    required String balance,
  });
}
