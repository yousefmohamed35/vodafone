import 'package:vodafon/feature/login/data/models/login_model/login_model.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final LoginModel data;

  LoginSuccess({required this.data});
}

class LoginFailed extends LoginState {
  final String message;

  LoginFailed({required this.message});
}
