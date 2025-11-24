import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/home/data/repos/home_repo.dart';

import 'first_ads_state.dart';

class FirstAdsCubit extends Cubit<FirstAdsState> {
  final HomeRepo _homeRepo;
  FirstAdsCubit(this._homeRepo) : super(FirstAdsInitial());

  Future<void> fetchFirstAds() async {
    emit(FirstAdsLoading());
    final result = await _homeRepo.getFirstAds();
    result.fold(
      (failure) {
        emit(FirstAdsError(message: failure.message));
      },
      (firstAds) {
        emit(FirstAdsLoaded(firstAds: firstAds));
      },
    );
  }
}
