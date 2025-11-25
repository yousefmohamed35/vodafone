import 'package:flutter/material.dart';

class ConsumptionCard extends StatelessWidget {
  const ConsumptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'استهلاكك',
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  spacing: 5,
                  children: List.generate(6, (index) {
                    return CircleAvatar(
                      radius: index == 0 ? 5 : 3,
                      backgroundColor: index == 0
                          ? Colors.red
                          : Colors.grey[300],
                    );
                  }),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'انتهت صلاحية باقتك جدد دلوقتي',
              style: TextTheme.of(
                context,
              ).bodyMedium?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              'علشان تستخدم من فليكساتك.',
              style: TextTheme.of(
                context,
              ).bodyMedium?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'جدد',
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
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
