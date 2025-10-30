part of 'sharing_image_cubit.dart';

abstract class SharingImageState {}

class SharingImageInitial extends SharingImageState {}

class SharingImageLoading extends SharingImageState {}

class SharingImageLoaded extends SharingImageState {
  final List<SharedMediaFile> mediaFiles;
  SharingImageLoaded(this.mediaFiles);
}

class SharingImageError extends SharingImageState {
  final String message;
  SharingImageError(this.message);
}
