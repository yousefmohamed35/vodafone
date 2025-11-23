part of 'second_ads_cubit.dart';
abstract class SecondAdsState {}

class SecondAdsInitial extends SecondAdsState {}

class SecondAdsLoading extends SecondAdsState {}
class SecondAdsLoaded extends SecondAdsState {
  final SecondAdsModel secondAds;
  SecondAdsLoaded({required this.secondAds});
}

class SecondAdsError extends SecondAdsState {
  final String message;
  SecondAdsError({required this.message});
}
