import 'package:flutter/material.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'feature/login/presentation/view/login_view.dart';
import 'go_to_home.dart';

class AppStartView extends StatelessWidget {
  const AppStartView({super.key});

  Future<bool> _isLoggedIn() async {
    return await SharedPrefHelper.getBoolean('isLogin') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _isLoggedIn(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final isLogged = snapshot.data!;

        return isLogged ? const GoToHome() : const LoginView();
      },
    );
  }
}
