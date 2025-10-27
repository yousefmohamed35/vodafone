part of 'ads_cubit.dart';

abstract class AdsState {}

class AdsInitial extends AdsState {}

class AdsLoading extends AdsState {}

class AdsLoaded extends AdsState {
  final List<XFile> ads;
  AdsLoaded(this.ads);
}

class AdsError extends AdsState {
  final String message;
  AdsError(this.message);
}

class SaveAdsSuccess extends AdsState {
  final String message;
  SaveAdsSuccess(this.message);
}

class SaveAdsError extends AdsState {
  final String message;
  SaveAdsError(this.message);
}

class GetAdsLoading extends AdsState {}

class GetAdsLoaded extends AdsState {
  final List<AdsModel> ads;
  GetAdsLoaded(this.ads);
}

class GetAdsError extends AdsState {
  final String message;
  GetAdsError(this.message);
}
