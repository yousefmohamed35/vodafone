import 'package:dartz/dartz.dart';
import 'package:vodafon/core/error/failure/failure.dart';
import 'package:vodafon/feature/vodafone_cash/models/second_ads_model/second_ads_model.dart';

abstract class VodafoneCacheRepo {
  Future<Either<Failure, SecondAdsModel>> getSecondAdsFromApi();
}
