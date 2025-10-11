import 'package:flutter/material.dart';
import 'package:vodafon/go_to_home.dart';

class VodafonApp extends StatelessWidget {
  const VodafonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const GoToHome(),
    );
  }
}
