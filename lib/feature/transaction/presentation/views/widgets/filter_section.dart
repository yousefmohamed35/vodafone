import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'تصنيف المعاملات:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          Spacer(),
          Icon(Icons.search_sharp, size: 32, color: Colors.grey[800]),
          SizedBox(width: 8),
          Icon(Icons.date_range, size: 32, color: Colors.grey[700]),
        ],
      ),
    );
  }
}
