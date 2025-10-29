import 'package:flutter/material.dart';

import 'package:vodafon/feature/transaction/data/models/extracted_data_model.dart';

import '../../../../../core/function/date_formate.dart';

class TransactionRecieptDetailes extends StatelessWidget {
  const TransactionRecieptDetailes({super.key, required this.extractedData});
  final List<ExtractedDataModel> extractedData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(extractedData.length, (index) {
        bool date = false;
        if (extractedData[index].keyAr == 'التاريخ' ||
            extractedData[index].keyAr == 'تاريخ المعاملة') {
          date = true;
        }
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  extractedData[index].keyAr,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Flexible(
                  child: Text(
                    date
                        ? formatDateTime(
                            parseTransactionDate(extractedData[index].value)!,
                          )
                        : extractedData[index].value,
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
            Divider(height: 30),
          ],
        );
      }),
    );
  }
}
