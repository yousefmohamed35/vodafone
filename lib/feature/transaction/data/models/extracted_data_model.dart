class ExtractedDataModel {
  final String keyEn;
  final String keyAr;
  final String value;

  ExtractedDataModel({
    required this.keyEn,
    required this.keyAr,
    required this.value,
  });
  factory ExtractedDataModel.fromJson(Map<String, dynamic> json) {
    return ExtractedDataModel(
      keyEn: json['key_en'],
      keyAr: json['key_ar'],
      value: json['value'],
    );
  }
  Map<String, dynamic> toJson() => {
        'key_en': keyEn,
        'key_ar': keyAr,
        'value': value,
      };
}