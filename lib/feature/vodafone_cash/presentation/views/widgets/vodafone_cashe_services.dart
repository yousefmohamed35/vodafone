import 'package:flutter/material.dart';

class VodafoneCashServices extends StatelessWidget {
  const VodafoneCashServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'ادفع بفوادفون كاش',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
        Spacer(),
        TextButton.icon(
          iconAlignment: IconAlignment.end,
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios, color: Colors.red, size: 12),
          label: Text(
            'المزيد',
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
