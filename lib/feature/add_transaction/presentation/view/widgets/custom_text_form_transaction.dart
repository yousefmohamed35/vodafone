import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormTransaction extends StatelessWidget {
  const CustomTextFormTransaction({
    super.key,
    required this.label,
    required this.title,
    required this.controller,
    this.validator,
    this.isPrice = false, // ✅ لتحديد إن كان حقل سعر أو لا
  });

  final String label;
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title, style: const TextStyle(fontSize: 20)),
            const Text('*', style: TextStyle(color: Colors.red)),
          ],
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: isPrice
              ? const TextInputType.numberWithOptions(decimal: true)
              : TextInputType.text,
          inputFormatters: [
            if (isPrice)
              FilteringTextInputFormatter.allow(RegExp(r'[0-9.,٠-٩]+')),
            ArabicToEnglishDigitsFormatter(), // ✅ يحول الأرقام العربية لإنجليزية
          ],
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
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Colors.red),
    );
  }
}

/// ✅ Formatter يحول الأرقام العربية إلى إنجليزية
class ArabicToEnglishDigitsFormatter extends TextInputFormatter {
  static const arabicToEnglish = {
    '٠': '0',
    '١': '1',
    '٢': '2',
    '٣': '3',
    '٤': '4',
    '٥': '5',
    '٦': '6',
    '٧': '7',
    '٨': '8',
    '٩': '9',
  };

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String converted = newValue.text.split('').map((char) {
      return arabicToEnglish[char] ?? char;
    }).join();

    return newValue.copyWith(text: converted);
  }
}
