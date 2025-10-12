import 'package:flutter/material.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/Home Wireless_Strip Banner-Desktop-1.jpg',
          fit: BoxFit.fill,
          height: 85,
        ),
      ),
    );
  }
}
