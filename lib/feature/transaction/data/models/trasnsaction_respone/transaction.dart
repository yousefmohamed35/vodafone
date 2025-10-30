class Transaction {
  String? status;
  String? phone;
  int? amount;
  int? fee;
  int? total;
  String? receiverName;
  String? reference;
  String? date;
  String? type;

  Transaction({
    this.status,
    this.phone,
    this.amount,
    this.fee,
    this.total,
    this.receiverName,
    this.reference,
    this.date,
    this.type,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    status: json['status'] as String?,
    phone: json['phone'] as String?,
    amount: json['amount'] as int?,
    fee: json['fee'] as int?,
    total: json['total'] as int?,
    receiverName: json['receiver_name'] as String?,
    reference: json['reference'] as String?,
    date: json['date'] as String?,
    type: json['type'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'phone': phone,
    'amount': amount,
    'fee': fee,
    'total': total,
    'receiver_name': receiverName,
    'reference': reference,
    'date': date,
    'type': type,
  };

  Transaction copyWith({
    String? status,
    String? phone,
    int? amount,
    int? fee,
    int? total,
    String? receiverName,
    String? reference,
    String? date,
    String? type,
  }) {
    return Transaction(
      status: status ?? this.status,
      phone: phone ?? this.phone,
      amount: amount ?? this.amount,
      fee: fee ?? this.fee,
      total: total ?? this.total,
      receiverName: receiverName ?? this.receiverName,
      reference: reference ?? this.reference,
      date: date ?? this.date,
      type: type ?? this.type,
    );
  }
}
