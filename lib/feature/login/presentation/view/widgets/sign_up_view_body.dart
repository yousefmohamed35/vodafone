import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/login/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:vodafon/feature/login/presentation/manager/sign_up_cubit/sign_up_state.dart';
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
            BlocListener<SignUpCubit, SignUpState>(
              listener: (context, state) {
                if (state is SignUpLoading) {
                  loading = true;
                  setState(() {});
                } else if (state is SignUpSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('تم تسجيل الرقم و الرصيد بنجاح'),
                    ),
                  );
                  Navigator.pop(context);
                } else if (state is SignUpFailed) {
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
              child: ReactiveButton(
                isLoading: loading,
                isActive: hasText,
                label: 'استمرار',
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    context.read<SignUpCubit>().signUp(
                      phone: phoneController.text,
                      balance: controller.text,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
