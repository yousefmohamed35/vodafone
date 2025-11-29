import 'package:flutter/material.dart';

class OnlineShop extends StatelessWidget {
  const OnlineShop({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Online Shop',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 0),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red.withOpacity(0.7),
                  size: 22,
                ),
                Spacer(),
                const Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
