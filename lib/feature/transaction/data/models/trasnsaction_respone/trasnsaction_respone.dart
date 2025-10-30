import 'transaction.dart';

class TrasnsactionRespone {
  List<Transaction>? transactions;

  TrasnsactionRespone({this.transactions});

  factory TrasnsactionRespone.fromJson(Map<String, dynamic> json) {
    return TrasnsactionRespone(
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'transactions': transactions?.map((e) => e.toJson()).toList(),
  };

  TrasnsactionRespone copyWith({List<Transaction>? transactions}) {
    return TrasnsactionRespone(transactions: transactions ?? this.transactions);
  }
}
