import 'package:flutter/material.dart';

import 'package:vodafon/feature/transaction/data/models/extracted_data_model.dart';

class TransactionRecieptDetailes extends StatelessWidget {
  const TransactionRecieptDetailes({super.key, required this.extractedData});
  final List<ExtractedDataModel> extractedData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(extractedData.length, (index) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  extractedData[index].keyEn,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Flexible(
                  child: Text(
                    extractedData[index].value,
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
            Divider(height: 30,),
          ],
        );
      }),
    );
  }
}
