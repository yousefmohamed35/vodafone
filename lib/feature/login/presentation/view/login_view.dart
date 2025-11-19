import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vodafon/feature/login/presentation/view/widgets/custom_line.dart';

import '../../../../core/widgets/app_button.dart';
import 'widgets/number_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController controller = TextEditingController();
  bool hasText = false;
  var formKey = GlobalKey<FormState>();
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  style: TextTheme.of(
                    context,
                  ).bodyMedium?.copyWith(fontSize: 18),
                ),
                SizedBox(height: 30),
                PhoneNumberTextField(controller: controller),
                SizedBox(height: 20),
                ReactiveButton(
                  isActive: hasText,
                  label: 'استمرار',
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      log('yousef');
                    }
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
      ),
    );
  }
}
