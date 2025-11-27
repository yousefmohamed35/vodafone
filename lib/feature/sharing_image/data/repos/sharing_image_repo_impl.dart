import 'dart:async';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'package:vodafon/core/services/dio_services/dio_services.dart';
import '../../../../core/error/exceptions/application_exception.dart';
import '../../../../core/error/failure/client_failure.dart';
import '../../../../core/error/failure/failure.dart';
import '../models/add_transaction_ocr_model.dart';
import 'sharing_image_repo.dart';

class SharingImageRepoImpl implements SharingImageRepo {
  final ReceiveSharingIntent _receiveSharingIntent;
  StreamSubscription? _intentSubscription;
  final StreamController<List<SharedMediaFile>> _mediaController;
  final DioServices _dioServices;

  SharingImageRepoImpl(
    this._dioServices, {
    ReceiveSharingIntent? receiveSharingIntent,
  }) : _receiveSharingIntent =
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

  // @override
  // Future<String?> extractInfoFromImage(SharedMediaFile sharedMediaFile) async {
  //   try {
  //     final apiKey = '';
  //     final model = GenerativeModel(model: 'gemini-2.5-flash', apiKey: apiKey);

  //     final data = await extractPath(sharedMediaFile);
  //     final prompt = """
  //     You are an expert in finacial data extractor.
  //     extract all key-value pairs (Arabic and English) from this transaction image.
  //     Detrmine the transaction direction as 'In' (incoming) or 'Out (outgoing)'.
  //     Return the result as a single json object that can be parsed by dart.
  //     Json format required:
  //     {
  //     "transaction_type": "in" or "out",
  //     "extracted_data":[
  //     {"key_en": "Total Amount", "key_ar": "المبلغ الكلي", "value": "100"},]
  //     }
  //     and give me only the json object withou json word in first start and end with {}.
  //     """;

  //     final response = await model.generateContent([
  //       Content.multi([TextPart(prompt), data]),
  //     ]);
  //     // delete json word from start
  //     final startIndex = response.text?.indexOf('{');
  //     final endIndex = response.text?.lastIndexOf('}');
  //     String editedText = '';
  //     if (startIndex != null && endIndex != null) {
  //       editedText = response.text?.substring(startIndex, endIndex + 1) ?? '';
  //     }
  //     log("📝 Repository: Extracted data from image: ${response.text}");
  //     return editedText;
  //   } catch (e) {
  //     log("❌ Repository: Error resetting - $e");
  //     rethrow;
  //   }
  // }

  // @override
  // Future<DataPart> extractPath(SharedMediaFile sharedMediaFile) async {
  //   final file = File(sharedMediaFile.path);
  //   final mimeType = lookupMimeType(sharedMediaFile.path);
  //   final bytes = await file.readAsBytes();
  //   return DataPart(mimeType!, bytes);
  // }

  // @override
  // Future<TransactionModel> extractDataFromImage({
  //   required SharedMediaFile sharedMediaFile,
  // }) async {
  //   final data = await extractInfoFromImage(sharedMediaFile);
  //   log('hello data is $data and type is ${data?.runtimeType}');

  //   final decodedData = await json.decode(data!);

  //   log('decoded data is $decodedData and type is ${decodedData.runtimeType}');
  //   return TransactionModel.fromJson(decodedData);
  // }

  // @override
  // Future<void> saveTransaction({
  //   required TransactionModel transactionModel,
  // }) async {
  //   final box = Hive.box<TransactionModel>('transaction_box');
  //   final rawAmount = transactionModel.extractedData
  //       .firstWhere((value) => value.keyAr == 'المبلغ الكلي')
  //       .value;
  //   final cleanAmountString = rawAmount.replaceAll(RegExp(r'[^0-9.]'), '');
  //   final amount = double.tryParse(cleanAmountString) ?? 0.0;
  //   await updateTotalAmount(
  //     amount: amount,
  //     type: transactionModel.transactionTye == 'in',
  //   );
  //   await box.add(transactionModel);
  // }

  @override
  Future<void> updateTotalAmount({required double amount}) async {
    try {
      await SharedPrefHelper.saveAmount(amount);
    } catch (e) {
      log('Error while updating total amount: $e');
    }
  }

  @override
  Future<Either<Failure, int>> getDataFromApiOCR({
    required List<SharedMediaFile> images,
  }) async {
    try {
      final clientId = await SharedPrefHelper.getInt('client_id');
      final addTransactionOcrModel = AddTransactionOcrModel(
        clientId: clientId.toString(),
        images: images,
      );

      final formData = await addTransactionOcrModel.toFormData();
      final response = await _dioServices.postRequestFormData(
        '/public/api/ocr',
        data: formData,
      );
      if (response.data['data'] != null) {
        await updateTotalAmount(amount: response.data['data'].toDouble());
      }
      log('✅ OCR Response: ${response.data}');
      return Right(response.data['data']);
    } on ApplicationException catch (e) {
      return Left(await dioExceptionsDecoder(e));
    } catch (e) {
      return Left(ClientFailure.unknown(message: 'حدث خطأ ما'));
    }
  }
}
