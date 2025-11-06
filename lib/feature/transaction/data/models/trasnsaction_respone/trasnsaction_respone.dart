import 'package:hive/hive.dart';

import 'transaction.dart';
part 'trasnsaction_respone.g.dart';
@HiveType(typeId: 5)
class TransactionResponse extends HiveObject {
  @HiveField(0)
  List<Transaction>? transactions;

  TransactionResponse({this.transactions});

  factory TransactionResponse.fromJson(Map<String, dynamic> json) {
    return TransactionResponse(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'transactions': transactions?.map((e) => e.toJson()).toList(),
  };

  TransactionResponse copyWith({List<Transaction>? transactions}) {
    return TransactionResponse(transactions: transactions ?? this.transactions);
  }
}
