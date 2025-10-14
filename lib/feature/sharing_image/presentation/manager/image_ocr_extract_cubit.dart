import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import '../../data/repos/sharing_image_repo.dart';

part 'image_ocr_extract_state.dart';

class ImageOcrExtractCubit extends Cubit<ImageOcrExtractState> {
  final SharingImageRepo sharingImageRepo;
  ImageOcrExtractCubit(this.sharingImageRepo) : super(ImageOcrExtractInitial());

  Future<void> extractInfoFromImage(SharedMediaFile sharedMediaFile) async {
    emit(ImageOcrExtractLoading());
    try {
      await sharingImageRepo.extractInfoFromImage(sharedMediaFile);
      emit(ImageOcrExtractLoaded('donnnne'));
    } catch (e) {
      emit(ImageOcrExtractError(e.toString()));
    }
  }
}
