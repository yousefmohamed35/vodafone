import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:vodafon/feature/login/presentation/manager/login_cubit/login_state.dart';
import 'package:vodafon/go_to_home.dart';

import '../../../../../core/widgets/app_button.dart';
import 'custom_line.dart';
import 'number_text_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController controller = TextEditingController();
  bool hasText = false;
  var formKey = GlobalKey<FormState>();
  bool loading = false;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        hasText = controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 40),
              Image.asset('assets/zeromega.png'),
              SizedBox(height: 40),
              Image.asset('assets/voda.png', width: 60, height: 60),
              SizedBox(height: 20),
              Text(
                'أهلاً في أنا فوادفون',
                style: TextTheme.of(
                  context,
                ).headlineLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'تابع استهلاكك وادفع فواتيرك وجدد باقتك وكل ده من مكان واحد',
                textAlign: TextAlign.center,
                style: TextTheme.of(context).bodyMedium?.copyWith(fontSize: 18),
              ),
              SizedBox(height: 30),
              PhoneNumberTextField(controller: controller),
              SizedBox(height: 20),
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is LoginLoading) {
                    loading = true;
                    setState(() {});
                  } else if (state is LoginSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoToHome()),
                    );
                    loading = false;
                    setState(() {});
                  } else if (state is LoginFailed) {
                    loading = false;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(state.message),
                      ),
                    );
                    setState(() {});
                  }
                },
                builder: (context, state) {
                  return ReactiveButton(
                    isLoading: loading,
                    isActive: hasText,
                    label: 'استمرار',
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        context.read<LoginCubit>().loginWithPhone(
                          controller.text,
                        );
                      }
                    },
                  );
                },
              ),
              SizedBox(height: 30),
              CustomLine(),
              SizedBox(height: 30),
              Text(
                'إضافة حساب جديد',

                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 1.5,
                  decorationColor: Colors.red,
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
