

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/second_ads_model/second_ads_model.dart';
import '../../repo/vodafone_cache_repo.dart';

part 'second_ads_state.dart';


class SecondAdsCubit extends Cubit<SecondAdsState> {
  final VodafoneCacheRepo _vodafoneCacheRepo;
  SecondAdsCubit(this._vodafoneCacheRepo) : super(SecondAdsInitial());

  Future<void> fetchSecondAds() async {
    emit(SecondAdsLoading());
    final result = await _vodafoneCacheRepo.getSecondAdsFromApi();
    result.fold(
      (failure) {
        emit(SecondAdsError(message: failure.message));
      },
      (secondAds) {
        emit(SecondAdsLoaded(secondAds: secondAds));
      },
    );
  }
}
