import 'data.dart';

class LoginModel {
  int? code;
  bool? status;
  dynamic message;
  Data? data;

  LoginModel({this.code, this.status, this.message, this.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    code: json['code'] as int?,
    status: json['status'] as bool?,
    message: json['message'] as dynamic,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'code': code,
    'status': status,
    'message': message,
    'data': data?.toJson(),
  };

  LoginModel copyWith({int? code, bool? status, dynamic message, Data? data}) {
    return LoginModel(
      code: code ?? this.code,
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}
