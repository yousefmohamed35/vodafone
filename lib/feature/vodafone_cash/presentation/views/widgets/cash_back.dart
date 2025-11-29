import 'package:flutter/material.dart';
import 'package:vodafon/core/extension/to_arabic_number.dart';

class CashBack extends StatelessWidget {
  const CashBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'كاش باك',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Text(
                '0.0 جنيه'.toArabicNumbers,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 4),
              Image.asset('assets/coins.png', width: 30),
            ],
          ),
        ],
      ),
    );
  }
}
