import 'package:hive_flutter/hive_flutter.dart';
import 'package:vodafon/feature/transaction/data/models/extracted_data_model.dart';

import '../../feature/transaction/data/models/transaction_model.dart';

Future<void> setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ExtractedDataModelAdapter());
  Hive.registerAdapter(TransactionModelAdapter());

  await Hive.openBox<TransactionModel>('transaction_box');
}
