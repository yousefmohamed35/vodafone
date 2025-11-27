class AddTransactionModel {
  int? clientId;
  String? name;
  String? type;
  num? amount;
  num? fee;
  String? reference;
  String? time;

  AddTransactionModel({
    this.clientId,
    this.name,
    this.type,
    this.amount,
    this.reference,
    this.time,
    this.fee
  });

  factory AddTransactionModel.fromJson(Map<String, dynamic> json) {
    return AddTransactionModel(
      clientId: json['client_id'] as int?,
      name: json['name'] as String?,
      fee: json['fee'] as num?,
      type: json['type'] as String?,
      amount: json['amount'] as num?,
      reference: json['reference'] as String?,
      time: json['time'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'client_id': clientId,
    'name': name,
    'type': type,
    'amount': amount,
    'reference': reference,
    'time': time,
    'fee': fee,
  };

  AddTransactionModel copyWith({
    int? clientId,
    String? name,
    String? type,
    num? amount,
    String? reference,
    String? time,
    num? fee,
  }) {
    return AddTransactionModel(
      clientId: clientId ?? this.clientId,
      name: name ?? this.name,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      reference: reference ?? this.reference,
      time: time ?? this.time,
      fee: fee ?? this.fee,
    );
  }
}
