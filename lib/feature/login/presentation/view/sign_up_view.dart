import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/core/services/setup_services_locator.dart';
import 'package:vodafon/feature/login/presentation/manager/sign_up_cubit/sign_up_cubit.dart';

import 'widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpCubit>(),
      child: Scaffold(body: SignUpViewBody()),
    );
  }
}
