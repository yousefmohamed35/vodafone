import 'package:flutter/material.dart';

class VodafoneCashServices extends StatelessWidget {
  const VodafoneCashServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Pay by Vodafon Wallet',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        TextButton.icon(
          iconAlignment: IconAlignment.end,
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.red,
          ),
          label: Text(
            'More',
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
