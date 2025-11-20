import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: 'أدخل المبلغ',
            // labelStyle: const TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: Colors.grey.shade400, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: Colors.red, width: 1.5),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('ج.م', style: TextStyle(color: Colors.black)),
            ),
          ),
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'من فضلك ادخل المبلغ';
            }
            if (double.tryParse(value) == null) {
              return 'المبلغ يجب ان يكون رقم';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        // SizedBox(
        //   width: double.infinity,
        //   child: ElevatedButton(
        //     onPressed: _isButtonEnabled ? _onSubmit : null,
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: _isButtonEnabled
        //           ? Colors.red[700]
        //           : Colors.red[200],
        //       padding: const EdgeInsets.symmetric(vertical: 16.0),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(16.0),
        //       ),
        //     ),
        //     child: Text(
        //       'اضافة المبلغ',
        //       style: TextStyle(
        //         fontSize: 18,
        //         color: _isButtonEnabled ? Colors.white : Colors.white70,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
