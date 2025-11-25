import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vodafon/core/error/failure/failure.dart';
import 'package:vodafon/core/error/utilies.dart';
import 'package:vodafon/feature/ads/data/models/add_ads_model.dart';

import '../../../../core/error/exceptions/application_exception.dart';
import '../../../../core/error/failure/client_failure.dart';
import '../../../../core/services/dio_services/dio_services.dart';
import 'ads_repo.dart';

class AdsRepoImpl implements AdsRepo {
  final DioServices dio;
  final ImagePicker _imagePicker = ImagePicker();
  List<XFile> ads = [];

  AdsRepoImpl(this.dio);
  @override
  Future<List<XFile>> fetchAds() async {
    ads = await _imagePicker.pickMultiImage(imageQuality: 100);
    log('ads: ${ads[0].path}');
    return ads;
  }

  @override
  Future<Either<Failure, bool>> addAds({
    required AddAdsModel addAdsModel,
  }) async {
    try {
      final formData = await addAdsModel.toFormData();
      await resolveOrThrow(
        () => dio.postRequestFormData('/public/api/ads', data: formData),
      );
      return Right(true);
    } on ApplicationException catch (e) {
      return Left(await dioExceptionsDecoder(e));
    } catch (e) {
      return Left(ClientFailure.unknown(message: 'حدث خطأ ما'));
    }
  }
}
