import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/login/data/services/login_services.dart';

import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._loginServices) : super(SignUpInitial());
  final LoginServices _loginServices;

  Future<void> signUp({required String phone, required String balance}) async {
    emit(SignUpLoading());
    final result = await _loginServices.signUp(phone: phone, balance: balance);
    result.fold(
      (fail) => emit(SignUpFailed(message: fail.message)),
      (isDone) => emit(SignUpSuccess()),
    );
  }
}
