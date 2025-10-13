import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import '../../data/repos/sharing_image_repo.dart';

part 'sharing_image_state.dart';

class SharingImageCubit extends Cubit<SharingImageState> {
  final SharingImageRepo repo;
  StreamSubscription<List<SharedMediaFile>>? _mediaSubscription;

  SharingImageCubit(this.repo) : super(SharingImageInitial());

  /// Load initial media once when the app starts
  Future<void> loadInitialMedia() async {
    emit(SharingImageLoading());
    try {
      final media = await repo.getInitialMedia();
      emit(SharingImageLoaded(media));
    } catch (e) {
      emit(SharingImageError("Failed to load initial media: $e"));
    }
  }

  /// Listen continuously for new shared media updates
  void listenToMediaStream() {
    _mediaSubscription = repo.getMediaStream().listen(
      (media) => emit(SharingImageLoaded(media)),
      onError: (error) => emit(SharingImageError("Error receiving media: $error")),
    );
  }

  /// Reset repository data
  Future<void> reset() async {
    await repo.reset();
    emit(SharingImageInitial());
  }

  /// Properly close resources
  @override
  Future<void> close() async {
    await _mediaSubscription?.cancel();
    await repo.dispose();
    return super.close();
  }
}
