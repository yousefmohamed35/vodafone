import 'history.dart';

class Data {
	int? id;
	String? phone;
	String? balance;
	DateTime? createdAt;
	DateTime? updatedAt;
	List<History>? histories;

	Data({
		this.id, 
		this.phone, 
		this.balance, 
		this.createdAt, 
		this.updatedAt, 
		this.histories, 
	});

	factory Data.fromJson(Map<String, dynamic> json) => Data(
				id: json['id'] as int?,
				phone: json['phone'] as String?,
				balance: json['balance'] as String?,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
				histories: (json['histories'] as List<dynamic>?)
						?.map((e) => History.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'phone': phone,
				'balance': balance,
				'created_at': createdAt?.toIso8601String(),
				'updated_at': updatedAt?.toIso8601String(),
				'histories': histories?.map((e) => e.toJson()).toList(),
			};

	Data copyWith({
		int? id,
		String? phone,
		String? balance,
		DateTime? createdAt,
		DateTime? updatedAt,
		List<History>? histories,
	}) {
		return Data(
			id: id ?? this.id,
			phone: phone ?? this.phone,
			balance: balance ?? this.balance,
			createdAt: createdAt ?? this.createdAt,
			updatedAt: updatedAt ?? this.updatedAt,
			histories: histories ?? this.histories,
		);
	}
}
