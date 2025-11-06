part of 'ocrfromapi_cubit.dart';

abstract class OcrfromapiState {}

class OcrfromapiInitial extends OcrfromapiState {}

class OcrfromapiLoading extends OcrfromapiState {}

class OcrfromapiSuccess extends OcrfromapiState {
  final TransactionResponse transactionResponse;

  OcrfromapiSuccess({required this.transactionResponse});
}

class OcrfromapiFailure extends OcrfromapiState {
  final String error;

  OcrfromapiFailure({required this.error});
}
