class History {
  int? id;
  int? clientId;
  String? type;
  String? name;
  num? fee;
  String? insert;
  String? amount;
  String? reference;
  String? time;
  DateTime? createdAt;
  DateTime? updatedAt;

  History({
    this.id,
    this.clientId,
    this.type,
    this.name,
    this.insert,
    this.amount,
    this.reference,
    this.time,
    this.createdAt,
    this.updatedAt,
    this.fee
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
    id: json['id'] as int?,
    clientId: json['client_id'] as int?,
    type: json['type'] as String?,
    name: json['name'] as String?,
    fee: json['fee'] as num?,
    insert: json['insert'] as String?,
    amount: json['amount'] as String?,
    reference: json['reference'] as String?,
    time: json['time'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'client_id': clientId,
    'type': type,
    'name': name,
    'insert': insert,
    'fee': fee,
    'amount': amount,
    'reference': reference,
    'time': time,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  History copyWith({
    int? id,
    int? clientId,
    String? type,
    String? name,
    String? insert,
    num? fee,
    String? amount,
    String? reference,
    String? time,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return History(
      id: id ?? this.id,
      clientId: clientId ?? this.clientId,
      type: type ?? this.type,
      fee: fee ?? this.fee,
      name: name ?? this.name,
      insert: insert ?? this.insert,
      amount: amount ?? this.amount,
      reference: reference ?? this.reference,
      time: time ?? this.time,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
