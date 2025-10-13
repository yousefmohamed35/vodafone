import 'package:flutter/material.dart';
import 'package:vodafon/vodafon_app.dart';

import 'core/services/setup_services_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(VodafonApp());
}
