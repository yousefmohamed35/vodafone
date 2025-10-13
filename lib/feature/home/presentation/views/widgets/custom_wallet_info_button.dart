import 'package:flutter/material.dart';

class CustomWalletInfoButton extends StatelessWidget {
  const CustomWalletInfoButton({
    super.key,
    required this.text,
    required this.icon, this.onPressed,
  });
  final String text;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,

      height: 50,
      elevation: 0,
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 8),
          Text(text, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
