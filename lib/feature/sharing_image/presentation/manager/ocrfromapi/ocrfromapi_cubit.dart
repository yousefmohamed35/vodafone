import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import '../../../data/repos/sharing_image_repo.dart';

part 'ocrfromapi_state.dart';

class OcrfromapiCubit extends Cubit<OcrfromapiState> {
  OcrfromapiCubit(this.sharingImageRepo) : super(OcrfromapiInitial());
  final SharingImageRepo sharingImageRepo;

  Future<void> getDataFromApi({required List<SharedMediaFile> images}) async {

      emit(OcrfromapiLoading());
      final result = await sharingImageRepo.getDataFromApiOCR(images: images);
      result.fold(
        (fail) => emit(OcrfromapiFailure(error: fail.message)),
        (isDone) => emit(OcrfromapiSuccess(message: "تمت الاضافة بنجاح")),
      );
     
  }
}
