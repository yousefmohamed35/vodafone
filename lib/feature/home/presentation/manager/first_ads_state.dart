import '../../../vodafone_cash/models/second_ads_model/second_ads_model.dart';

abstract class FirstAdsState {}

class FirstAdsInitial extends FirstAdsState {}

class FirstAdsLoading extends FirstAdsState {}

class FirstAdsLoaded extends FirstAdsState {
  final SecondAdsModel firstAds;
  FirstAdsLoaded({required this.firstAds});
}

class FirstAdsError extends FirstAdsState {
  final String message;
  FirstAdsError({required this.message});
}
