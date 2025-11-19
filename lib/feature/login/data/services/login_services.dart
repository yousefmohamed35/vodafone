import 'package:dio/dio.dart';

abstract class LoginServices {
  Future<Response> loginWithPhone({required String phone});
}