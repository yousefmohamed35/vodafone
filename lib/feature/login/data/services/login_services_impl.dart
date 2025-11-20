import 'package:dartz/dartz.dart';
import 'package:vodafon/core/error/failure/failure.dart';
import 'package:vodafon/feature/login/data/models/login_model/login_model.dart';
import '../../../../core/error/exceptions/application_exception.dart';
import '../../../../core/error/failure/client_failure.dart';
import '../../../../core/error/utilies.dart';
import '../../../../core/services/dio_services/dio_services.dart';
import 'login_services.dart';

class LoginServicesImpl implements LoginServices {
  final DioServices dio;

  LoginServicesImpl(this.dio);

  @override
  Future<Either<Failure, LoginModel>> loginWithPhone({
    required String phone,
  }) async {
    try {
      final response = await resolveOrThrow(()=>dio.getRequest("/public/api/clients/$phone"));
       
      final data = LoginModel.fromJson(response.data);
      return Right(data);
    } on ApplicationException catch (e) {
      return Left(await dioExceptionsDecoder(e));
    } catch (e) {
      return Left(ClientFailure.unknown(message: 'حدث خطأ ما'));
    }
  }
}
