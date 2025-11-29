import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:vodafon/feature/login/data/services/login_services.dart';

import '../../../../../core/helper/cashe_helper.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginServices loginServices;

  LoginCubit(this.loginServices) : super(LoginInitial());

  Future<void> loginWithPhone(String phone) async {
    emit(LoginLoading());
    final result = await loginServices.loginWithPhone(phone: phone);

    result.fold(
      (failure) {
        emit(LoginFailed(message: failure.message));
      },
      (data) async {
        await SharedPrefHelper.saveAmount(double.parse(data.data!.balance!));
        await SharedPrefHelper.setBoolean('isLogin', true);
        await SharedPrefHelper.saveInt('client_id', data.data!.id!);
        await SharedPrefHelper.saveString('phone', phone);
        emit(LoginSuccess(data: data));
      },
    );
  }
}
