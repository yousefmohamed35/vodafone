import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/vodafone_cash_body.dart';

import '../../../../core/services/setup_services_locator.dart';
import '../../repo/vodafone_cache_repo.dart';
import '../manager/second_ads_cubit.dart';

class VodafoneCash extends StatelessWidget {
  const VodafoneCash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SecondAdsCubit(getIt<VodafoneCacheRepo>())..fetchSecondAds(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('فوادفون كاش'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.black,
        body: VodafoneCashBody(),
      ),
    );
  }
}
