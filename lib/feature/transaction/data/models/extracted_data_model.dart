import 'package:hive/hive.dart';

part 'extracted_data_model.g.dart';

@HiveType(typeId: 2)
class ExtractedDataModel extends HiveObject {
  @HiveField(0)
  final String keyEn;
  @HiveField(1)
  final String keyAr;
  @HiveField(2)
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
