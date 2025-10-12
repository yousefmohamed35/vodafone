import 'package:flutter/material.dart';

class MoreServicesCard extends StatelessWidget {
  const MoreServicesCard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.red, size: 18),
              ],
            ),
          ),
        ),
        Divider(height: 10, color: Colors.grey[250], thickness: 1),
      ],
    );
  }
}
