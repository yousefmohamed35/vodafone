import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberTextField extends StatefulWidget {
  final TextEditingController controller;

  const PhoneNumberTextField({super.key, required this.controller});

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      maxLength: 11,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        counterText: "",
        labelText: "رقم الموبايل",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.shade400, // رمادي
            width: 1.4,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red, width: 1.6),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "من فضلك ادخل رقم الموبايل";
        }
        if (value.length != 11) {
          return "رقم الموبايل يجب أن يكون 11 رقم";
        }
        if (!value.startsWith("01")) {
          return "رقم الموبايل يجب أن يبدأ بـ 01";
        }
        return null;
      },
    );
  }
}
