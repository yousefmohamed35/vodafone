import 'package:flutter/material.dart';

class CustomWalletInfoButton extends StatelessWidget {
  const CustomWalletInfoButton({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
    required this.isLeft,
  });
  final String text;
  final IconData icon;
  final bool isLeft;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(0),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.only(
          bottomRight: Radius.circular(isLeft ? 0 : 12),
          bottomLeft: Radius.circular(isLeft ? 12 : 0),
        ),
      ),
      height: 60,
      elevation: 0,
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 5),
          if (isLeft == false)
            Container(
              alignment: Alignment.center,
              width: 40,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('جديد'),
            ),
        ],
      ),
    );
  }
}
