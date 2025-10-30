import 'package:flutter/material.dart';
import 'package:vodafon/vodafon_app.dart';

import 'core/services/setup_hive.dart';
import 'core/services/setup_services_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await setupHive();
  runApp(VodafonApp());
}
