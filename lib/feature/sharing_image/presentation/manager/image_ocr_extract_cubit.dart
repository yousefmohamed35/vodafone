import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/feature/transaction/data/models/transaction_model.dart';

import '../../data/repos/sharing_image_repo.dart';

part 'image_ocr_extract_state.dart';

class ImageOcrExtractCubit extends Cubit<ImageOcrExtractState> {
  final SharingImageRepo sharingImageRepo;
  ImageOcrExtractCubit(this.sharingImageRepo) : super(ImageOcrExtractInitial());

  Future<void> extractDataFromImage(SharedMediaFile sharedMediaFile) async {
    emit(ImageOcrExtractLoading());
    try {
      final transaction = await sharingImageRepo.extractDataFromImage(
        sharedMediaFile: sharedMediaFile,
      );
      emit(ImageOcrExtractLoaded(transactionModel: transaction));
    } catch (e) {
      emit(ImageOcrExtractError(e.toString()));
    }
  }
}
