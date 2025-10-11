import 'package:flutter/material.dart';
import 'package:vodafon/feature/total/presentation/views/widgets/custom_text_form_field.dart';

class AddTotalViewBody extends StatelessWidget {
  const AddTotalViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const SizedBox(height: 50),
          Text(
            'dont let anything stop you from recharging your balance',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),

          const SizedBox(height: 8),
          Text(
            'add your total balance',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 30),
          CustomTextFormField(),
        ],
      ),
    );
  }
}
