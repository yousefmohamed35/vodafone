import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/feature/transaction/data/models/trasnsaction_respone/trasnsaction_respone.dart';

import '../../../data/repos/sharing_image_repo.dart';

part 'ocrfromapi_state.dart';

class OcrfromapiCubit extends Cubit<OcrfromapiState> {
  OcrfromapiCubit(this.sharingImageRepo) : super(OcrfromapiInitial());
  final SharingImageRepo sharingImageRepo;

  Future<void> getDataFromApi({required List<SharedMediaFile> images}) async {
    try {
      emit(OcrfromapiLoading());
      final result = await sharingImageRepo.getDataFromApiOCR(images: images);
      log('hiiii ${result.transactions}');
      emit(OcrfromapiSuccess(transactionResponse: result));
      final box = Hive.box<TransactionResponse>('transaction_response_box');
      await box.add(result);
    } on Exception catch (e) {
      emit(OcrfromapiFailure(error: e.toString()));
    }
  }
}
