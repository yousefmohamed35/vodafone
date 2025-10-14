part of 'image_ocr_extract_cubit.dart';


abstract class ImageOcrExtractState {}

class ImageOcrExtractInitial extends ImageOcrExtractState {}
class ImageOcrExtractLoading extends ImageOcrExtractState {}
class ImageOcrExtractLoaded extends ImageOcrExtractState {
  final String text;
  ImageOcrExtractLoaded(this.text);
}
class ImageOcrExtractError extends ImageOcrExtractState {
  final String message;
  ImageOcrExtractError(this.message);
}
