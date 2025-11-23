import 'data.dart';

class TransactionApiModel {
  int? code;
  dynamic status;
  dynamic message;
  Data? data;

  TransactionApiModel({this.code, this.status, this.message, this.data});

  factory TransactionApiModel.fromJson(Map<String, dynamic> json) {
    return TransactionApiModel(
      code: json['code'] as int?,
      status: json['status'] as dynamic,
      message: json['message'] as dynamic,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
    'code': code,
    'status': status,
    'message': message,
    'data': data?.toJson(),
  };

  TransactionApiModel copyWith({
    int? code,
    dynamic status,
    dynamic message,
    Data? data,
  }) {
    return TransactionApiModel(
      code: code ?? this.code,
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
