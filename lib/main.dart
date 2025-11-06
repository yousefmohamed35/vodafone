import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vodafon/core/presentation/no_money.dart';
import 'package:vodafon/core/services/api_services.dart';
import 'package:vodafon/vodafon_app.dart';

import 'core/services/setup_hive.dart';
import 'core/services/setup_services_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await setupHive();
  final bool = await ApiServices(Dio()).get() ?? false;
  runApp( VodafonApp());
}

class NoMoneyApp extends StatelessWidget {
  const NoMoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: NoMoney());
  }
}
