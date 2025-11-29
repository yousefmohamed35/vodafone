import 'package:flutter/material.dart';

class Entertainments extends StatelessWidget {
  const Entertainments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // خفيف جدًا
            blurRadius: 10, // صغير = يشبه border
            spreadRadius: 2, // يخلي الظل حوالين الكارت
            offset: const Offset(0, 2), // خفيف تحت
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'الترفيه',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 0),
            Row(children: [Spacer(), Icon(Icons.arrow_forward_ios, size: 22)]),
          ],
        ),
      ),
    );
  }
}
