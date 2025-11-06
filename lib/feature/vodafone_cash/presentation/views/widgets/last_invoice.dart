import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LastInvoice extends StatelessWidget {
  const LastInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Text('الفواتير المستحقه'),
        leading: Icon(Icons.star, color: Colors.amber),
        trailing: Icon(Icons.replay_outlined, color: Colors.red),
      ),
    );
  }
}
