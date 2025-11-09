import 'package:flutter/material.dart';

class LastInvoice extends StatelessWidget {
  const LastInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: Colors.white,
      child: ListTile(
        title: Text(
          'الفواتير المستحقه',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.star, color: Colors.amber),
        trailing: Icon(Icons.replay_outlined, color: Colors.red),
      ),
    );
  }
}
