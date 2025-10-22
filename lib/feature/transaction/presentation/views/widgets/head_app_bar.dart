import 'package:flutter/material.dart';

class HeadAppBar extends StatelessWidget {
  const HeadAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('تاريخ المعاملات', style: TextStyle(fontSize: 14))],
          ),
        ),
      ],
    );
  }
}
