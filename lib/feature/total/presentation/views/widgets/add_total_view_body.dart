import 'package:flutter/material.dart';
import 'package:vodafon/feature/total/presentation/views/widgets/custom_text_form_field.dart';

class AddTotalViewBody extends StatelessWidget {
  const AddTotalViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/Vodafonelogo.png'),
            Text(
              'تابع استهلاكك و ادفع فواتيرك وجدد باقتك و كل ده من مكان واحد',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
          //  CustomTextFormField(),
          ],
        ),
      ),
    );
  }
}
