import 'package:flutter/material.dart';

class Recharge extends StatelessWidget {
  const Recharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'شحن الرصيد',
              style: TextTheme.of(
                context,
              ).bodyMedium?.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '9.83 جنيه',
                  style: TextTheme.of(
                    context,
                  ).bodyMedium?.copyWith(fontSize: 18),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
