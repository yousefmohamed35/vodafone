import 'package:flutter/material.dart';
import 'package:vodafon/feature/login/presentation/view/widgets/number_text_field.dart';

import '../../../../../core/widgets/app_button.dart';
import '../../../../total/presentation/views/widgets/custom_text_form_field.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool hasText = false;
  bool loading = false;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        hasText = controller.text.isNotEmpty && phoneController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          spacing: 24,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/voda.png', width: 100, height: 100),
            PhoneNumberTextField(controller: phoneController),
            CustomTextFormField(controller: controller),
            ReactiveButton(
              isLoading: loading,
              isActive: hasText,
              label: 'استمرار',
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
