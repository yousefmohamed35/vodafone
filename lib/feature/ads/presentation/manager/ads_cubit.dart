import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../data/models/add_ads_model.dart';
import '../../data/repo/ads_repo.dart';
part 'ads_state.dart';

class AdsCubit extends Cubit<AdsState> {
  AdsCubit(this.adsRepo) : super(AdsInitial());
  final AdsRepo adsRepo;
  List<XFile> ads = [];
  Future<void> fetchAds() async {
    emit(AdsLoading());
    try {
      final newAds = await adsRepo.fetchAds();
      ads.addAll(newAds);
      emit(AdsLoaded(ads));
    } catch (e) {
      emit(AdsError(e.toString()));
    }
  }

  Future<void> deleteAd(XFile ad) async {
    emit(AdsLoading());
    try {
      ads.remove(ad);
      emit(AdsLoaded(ads));
    } catch (e) {
      emit(AdsError(e.toString()));
    }
  }

  // Future<void> deleteAllAds() async {
  //   emit(AdsLoading());
  //   try {
  //     ads = [];
  //     emit(AdsLoaded(ads));
  //   } catch (e) {
  //     emit(AdsError(e.toString()));
  //   }
  // }

  Future<void> saveAds({required String type}) async {
    emit(AdsLoading());
    try {
      final addAdsModel = AddAdsModel(
        type: type,
        imagePaths: ads.map((e) => e.path).toList(),
      );
      await adsRepo.addAds(addAdsModel: addAdsModel);
      emit(SaveAdsSuccess('تم إضافة الإعلانات بنجاح'));
    } catch (e) {
      emit(SaveAdsError(e.toString()));
    }
  }
}
