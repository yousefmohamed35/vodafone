import 'package:dartz/dartz.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/core/error/failure/failure.dart';


abstract class SharingImageRepo {
  Future<List<SharedMediaFile>> getInitialMedia();

  /// Stream of shared media while app is running
  Stream<List<SharedMediaFile>> getMediaStream();

  /// Reset/clear the current shared media
  Future<void> reset();

  /// Dispose resources
  Future<void> dispose();
  // Future<String?> extractInfoFromImage(SharedMediaFile sharedMediaFile);
  // Future<DataPart> extractPath(SharedMediaFile sharedMediaFile);
  // Future<TransactionModel> extractDataFromImage({
  //   required SharedMediaFile sharedMediaFile,
  // });
  // Future<void> saveTransaction({required TransactionModel transactionModel});
  Future<void> updateTotalAmount({required double amount, required bool type});

  Future<Either<Failure,bool>> getDataFromApiOCR({
    required List<SharedMediaFile> images,
  });
}
