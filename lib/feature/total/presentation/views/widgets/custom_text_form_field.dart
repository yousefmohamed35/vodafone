import 'package:flutter/material.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'package:vodafon/go_to_home.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  bool _isButtonEnabled = false;

  void _onChanged(String value) {
    setState(() {
      _isButtonEnabled =
          value.trim().isNotEmpty && double.tryParse(value) != null;
    });
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      // Save the amount using SharedPrefHelper
      SharedPrefHelper.saveAmount(double.parse(_controller.text.trim()));
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => const GoToHome()));
      // set bool for first time
      SharedPrefHelper.setBoolean('is_first_time', false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('تمت الاضافة بنجاح')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _controller,
            onChanged: _onChanged,
            decoration: InputDecoration(
              labelText: 'أدخل المبلغ',
              labelStyle: const TextStyle(color: Colors.red),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(color: Colors.red.shade300, width: 1.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(color: Colors.red.shade300, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide(color: Colors.red.shade700, width: 1.5),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text('ج.م', style: TextStyle(color: Colors.red)),
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
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isButtonEnabled ? _onSubmit : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: _isButtonEnabled
                    ? Colors.red[700]
                    : Colors.red[200],
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: Text(
                'اضافة المبلغ',
                style: TextStyle(
                  fontSize: 18,
                  color: _isButtonEnabled ? Colors.white : Colors.white70,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
