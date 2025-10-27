import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/core/services/setup_services_locator.dart';
import 'package:vodafon/feature/ads/presentation/manager/ads_cubit.dart';

import 'widgets/ads_view_body.dart';

class AdsView extends StatelessWidget {
  const AdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AdsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: BackButton(color: Colors.white),
          title: Text('الإعلانات', style: TextStyle(color: Colors.white)),
        ),
        body: AdsViewBody(),
      ),
    );
  }
}
