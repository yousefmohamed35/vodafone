class Datum {
  int? id;
  String? image;
  String? type;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? imageUrl;

  Datum({
    this.id,
    this.image,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.imageUrl,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json['id'] as int?,
    image: json['image'] as String?,
    type: json['type'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    imageUrl: json['image_url'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'image': image,
    'type': type,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'image_url': imageUrl,
  };

  Datum copyWith({
    int? id,
    String? image,
    String? type,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? imageUrl,
  }) {
    return Datum(
      id: id ?? this.id,
      image: image ?? this.image,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
