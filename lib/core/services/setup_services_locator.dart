import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:vodafon/core/services/api_services.dart';
import 'package:vodafon/feature/ads/data/repo/ads_repo_impl.dart';
import 'package:vodafon/feature/login/data/services/login_services.dart';
import 'package:vodafon/feature/login/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:vodafon/feature/sharing_image/data/repos/sharing_image_repo_impl.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/sharing_image_cubit.dart';
import 'package:vodafon/feature/transaction/data/repos/transaction_repo.dart';
import 'package:vodafon/feature/transaction/presentation/manager/transaction_data_cubit.dart';

import '../../feature/ads/presentation/manager/ads_cubit.dart';
import '../../feature/login/data/services/login_services_impl.dart';
import '../../feature/login/presentation/manager/login_cubit/login_cubit.dart';
import '../../feature/transaction/data/repos/transaction_repo_impl.dart';
import 'dio_services/dio_services.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerFactory<SharingImageCubit>(
    () => SharingImageCubit(SharingImageRepoImpl(ApiServices(Dio()))),
  );
  getIt.registerSingleton(AdsRepoImpl());
  getIt.registerFactory(() => AdsCubit(getIt<AdsRepoImpl>()));

  getIt.registerLazySingleton<DioServices>(() => DioServices());
  getIt.registerLazySingleton<LoginServices>(
    () => LoginServicesImpl(getIt<DioServices>()),
  );
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginServices>()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<LoginServices>()));
  getIt.registerLazySingleton<TransactionRepo>(
    () => TransactionRepoImpl(getIt<DioServices>()),
  );
  getIt.registerFactory<TransactionDataCubit>(() => TransactionDataCubit(getIt<TransactionRepo>()));
}
