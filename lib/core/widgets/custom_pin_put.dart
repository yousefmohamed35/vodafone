import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPinPut extends StatefulWidget {
  const CustomPinPut({super.key, this.onCompleted});
  final void Function(String)? onCompleted;
  @override
  State<CustomPinPut> createState() => _CustomPinPutState();
}

class _CustomPinPutState extends State<CustomPinPut>
    with SingleTickerProviderStateMixin {
  final _pinController = TextEditingController();
  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 250),
      padding: EdgeInsets.only(
        // bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        // padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: const Text(
                "ادخل الرقم السري",
                style: TextStyle(fontSize: 16),
              ),
            ),

            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Pinput(
                onCompleted: (value) {
                  widget.onCompleted?.call(value);
                },
                controller: _pinController,
                length: 6,
                obscureText: true,
                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 70,
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 50,
                  height: 70,
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.red, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.2),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('?', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 8),
                const Text("نسيت الرقم السري", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(color: Colors.black87),
              width: double.infinity,
              child: Text(
                'ادخل الرقم السري المكون من 6 ارقام',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
