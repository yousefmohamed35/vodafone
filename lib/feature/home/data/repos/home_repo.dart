import 'package:dartz/dartz.dart';
import '../../../vodafone_cash/models/second_ads_model/second_ads_model.dart';

import '../../../../core/error/failure/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, SecondAdsModel>> getFirstAds();
}
