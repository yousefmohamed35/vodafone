import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vodafon/core/error/failure/failure.dart';
import '../models/add_ads_model.dart';

abstract class AdsRepo {
   Future<List<XFile>> fetchAds();
  // Future<void> saveAds(List<XFile> ads);
  // List<AdsModel> getAds();

  Future<Either<Failure, bool>> addAds({required AddAdsModel addAdsModel});
}
