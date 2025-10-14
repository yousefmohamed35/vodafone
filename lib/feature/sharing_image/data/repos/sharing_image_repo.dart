import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

abstract class SharingImageRepo {
  Future<List<SharedMediaFile>> getInitialMedia();

  /// Stream of shared media while app is running
  Stream<List<SharedMediaFile>> getMediaStream();

  /// Reset/clear the current shared media
  Future<void> reset();

  /// Dispose resources
  Future<void> dispose();
  Future<void> extractInfoFromImage(SharedMediaFile sharedMediaFile);
  Future<DataPart> extractPath(SharedMediaFile sharedMediaFile);
}
