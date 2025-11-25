part of 'ocrfromapi_cubit.dart';

abstract class OcrfromapiState {}

class OcrfromapiInitial extends OcrfromapiState {}

class OcrfromapiLoading extends OcrfromapiState {}

class OcrfromapiSuccess extends OcrfromapiState {
  final String message;

  OcrfromapiSuccess({required this.message});
}

class OcrfromapiFailure extends OcrfromapiState {
  final String error;

  OcrfromapiFailure({required this.error});
}
