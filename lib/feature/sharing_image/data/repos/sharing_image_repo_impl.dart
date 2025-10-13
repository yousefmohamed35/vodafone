import 'dart:async';
import 'dart:developer';

import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import 'sharing_image_repo.dart';

class SharingImageRepoImpl implements SharingImageRepo {
  final ReceiveSharingIntent _receiveSharingIntent;
  StreamSubscription? _intentSubscription;
  final StreamController<List<SharedMediaFile>> _mediaController;

  SharingImageRepoImpl({ReceiveSharingIntent? receiveSharingIntent})
    : _receiveSharingIntent =
          receiveSharingIntent ?? ReceiveSharingIntent.instance,

      _mediaController = StreamController<List<SharedMediaFile>>.broadcast() {
    _intentSubscription = _receiveSharingIntent.getMediaStream().listen(
      (List<SharedMediaFile> files) {
        log("📲 New shared media received: ${files.length} files");
        _mediaController.add(files);
      },
      onError: (err) {
        log("❌ Error receiving shared media: $err");
        _mediaController.addError(err);
      },
    );
  }

  @override
  Future<void> dispose() async {
    log("🔌 Repository: Disposing resources");
    await _intentSubscription?.cancel();
    await _mediaController.close();
  }

  @override
  Future<List<SharedMediaFile>> getInitialMedia() {
    try {
      return _receiveSharingIntent.getInitialMedia();
    } catch (e) {
      log("❌ Error getting initial media: $e");
      return Future.value([]);
    }
  }

  @override
  Stream<List<SharedMediaFile>> getMediaStream() {
    return _mediaController.stream;
  }

  @override
  Future<void> reset() async {
    try {
      log("🗑️ Repository: Resetting shared media");
      await _receiveSharingIntent.reset();
    } catch (e) {
      log("❌ Repository: Error resetting - $e");
      rethrow;
    }
  }
}
