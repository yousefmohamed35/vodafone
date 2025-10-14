import 'extracted_data_model.dart';

class TransactionModel {
  final String transactionTye;
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
