import 'package:get_it/get_it.dart';
import 'package:vodafon/feature/ads/data/repo/ads_repo_impl.dart';
import 'package:vodafon/feature/sharing_image/data/repos/sharing_image_repo_impl.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/sharing_image_cubit.dart';

import '../../feature/ads/presentation/manager/ads_cubit.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerFactory<SharingImageCubit>(
    () => SharingImageCubit(SharingImageRepoImpl()),
  );
  getIt.registerSingleton(AdsRepoImpl());
  getIt.registerFactory(() => AdsCubit(getIt<AdsRepoImpl>()));
}
