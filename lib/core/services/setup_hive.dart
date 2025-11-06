import 'package:hive_flutter/hive_flutter.dart';
import 'package:vodafon/feature/ads/data/models/ads_model.dart';
import 'package:vodafon/feature/transaction/data/models/extracted_data_model.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/transaction.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/trasnsaction_respone.dart';

import '../../feature/transaction/data/models/transaction_model.dart';

Future<void> setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ExtractedDataModelAdapter());
  Hive.registerAdapter(TransactionModelAdapter());
  Hive.registerAdapter(AdsModelAdapter());
  Hive.registerAdapter(TransactionResponseAdapter());
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<TransactionResponse>('transaction_response_box');
  await Hive.openBox<TransactionModel>('transaction_box');
  await Hive.openBox<AdsModel>('ads_box');
}
