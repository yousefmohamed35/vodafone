import 'package:dartz/dartz.dart';

import 'package:vodafon/core/error/failure/failure.dart';

import 'package:vodafon/feature/vodafone_cash/models/second_ads_model/second_ads_model.dart';

import '../../../core/error/exceptions/application_exception.dart';
import '../../../core/error/failure/client_failure.dart';
import '../../../core/error/utilies.dart';
import '../../../core/helper/cashe_helper.dart';
import '../../../core/services/dio_services/dio_services.dart';
import 'vodafone_cache_repo.dart';

class VodafoneCacheRepoImpl implements VodafoneCacheRepo {
  final DioServices dio;

  VodafoneCacheRepoImpl(this.dio);
  @override
  Future<Either<Failure, SecondAdsModel>> getSecondAdsFromApi() async{
  try {
      final id = await SharedPrefHelper.getInt('client_id');
      final response = await resolveOrThrow(
        () => dio.getRequest("/public/api/ads-second",query: {'client_id':id}),
      );
      final data = SecondAdsModel.fromJson(response.data);

      return Right(data);
    } on ApplicationException catch (e) {
      return Left(await dioExceptionsDecoder(e));
    } catch (e) {
      return Left(ClientFailure.unknown(message: 'حدث خطأ ما'));
    }
  }

}
