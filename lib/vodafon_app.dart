import 'package:flutter/material.dart';
import 'package:vodafon/feature/total/presentation/views/add_total_view.dart';

class VodafonApp extends StatelessWidget {
  const VodafonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: AddTotalView(),
    );
  }
}
