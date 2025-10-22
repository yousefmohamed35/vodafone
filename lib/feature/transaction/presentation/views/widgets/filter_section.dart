import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('تصنيف المعاملات:', style: TextStyle(fontSize: 20)),
          Spacer(),
          Icon(Icons.search),
          Icon(Icons.date_range),
        ],
      ),
    );
  }
}
