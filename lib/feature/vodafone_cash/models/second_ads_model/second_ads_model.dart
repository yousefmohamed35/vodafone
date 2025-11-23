import 'datum.dart';

class SecondAdsModel {
  int? code;
  bool? status;
  dynamic message;
  List<Datum>? data;

  SecondAdsModel({this.code, this.status, this.message, this.data});

  factory SecondAdsModel.fromJson(Map<String, dynamic> json) {
    return SecondAdsModel(
      code: json['code'] as int?,
      status: json['status'] as bool?,
      message: json['message'] as dynamic,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    'code': code,
    'status': status,
    'message': message,
    'data': data?.map((e) => e.toJson()).toList(),
  };

  SecondAdsModel copyWith({
    int? code,
    bool? status,
    dynamic message,
    List<Datum>? data,
  }) {
    return SecondAdsModel(
      code: code ?? this.code,
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
