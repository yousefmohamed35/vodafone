import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'package:vodafon/feature/home/presentation/views/home_view.dart';
import 'package:vodafon/feature/total/presentation/views/add_total_view.dart';

class GoToHome extends StatefulWidget {
  const GoToHome({super.key});

  @override
  State<GoToHome> createState() => _GoToHomeState();
}

class _GoToHomeState extends State<GoToHome> {
  @override
  void initState() {
    super.initState();
    _checkFirstTime();
  }

  Future<void> _checkFirstTime() async {
    final isFirstTime =
        await SharedPrefHelper.getBoolean(key: 'is_first_time') ?? true;
    log('isFirstTime: $isFirstTime');
    // تأكد إن الـ context جاهز بعد بناء الواجهة
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (isFirstTime) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const AddTotalView()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeView()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // شاشة فاضية مؤقتة مش باينه للمستخدم (زي الـ splash)
    return const Scaffold(backgroundColor: Colors.white);
  }
}
