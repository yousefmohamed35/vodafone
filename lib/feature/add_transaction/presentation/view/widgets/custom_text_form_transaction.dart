import 'package:flutter/material.dart';

class CustomTextFormTransaction extends StatelessWidget {
  const CustomTextFormTransaction({
    super.key,
    required this.label,
    required this.title,
    required this.controller,
    this.validator,
  });
  final String label;
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(title, style: TextStyle(fontSize: 20)),
            Text('*', style: TextStyle(color: Colors.red)),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            labelText: label,
            border: customBorder(),
            enabledBorder: customBorder(),
            focusedBorder: customBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.red),
    );
  }
}
