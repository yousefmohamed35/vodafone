import 'package:flutter/material.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'package:vodafon/feature/home/presentation/views/home_view.dart';

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
      ).pushReplacement(MaterialPageRoute(builder: (_) => const HomeView()));
      // set bool for first time
      SharedPrefHelper.setBoolean('is_first_time', true);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Total Added Successfully!')),
      );
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
              labelText: 'Enter Amount',
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
              prefixIcon: const Icon(Icons.attach_money, color: Colors.red),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter an amount';
              }
              if (double.tryParse(value) == null) {
                return 'Please enter a valid number';
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
                'Add Total',
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
