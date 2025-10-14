import 'package:hive/hive.dart';

import 'extracted_data_model.dart';
part 'transaction_model.g.dart';

@HiveType(typeId: 1)
class TransactionModel extends HiveObject {
  @HiveField(0)
  final String transactionTye;
  @HiveField(1)
  final List<ExtractedDataModel> extractedData;
  TransactionModel({required this.transactionTye, required this.extractedData});
  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      TransactionModel(
        transactionTye: json['transaction_type'],
        extractedData: (json['extracted_data'] as List)
            .map((e) => ExtractedDataModel.fromJson(e))
            .toList(),
      );
}
