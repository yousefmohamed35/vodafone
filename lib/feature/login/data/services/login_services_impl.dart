import 'package:dio/dio.dart';
import '../../../../core/services/dio_services/dio_services.dart';
import 'login_services.dart';

class LoginServicesImpl implements LoginServices {
  final DioServices dio;

  LoginServicesImpl(this.dio);

  @override
  Future<Response> loginWithPhone({required String phone}) async {
    return await dio.postRequest("/public/api/clients/$phone");
  }
}
