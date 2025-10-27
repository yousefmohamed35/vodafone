import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/ads/presentation/manager/ads_cubit.dart';
import 'package:vodafon/feature/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/services/setup_services_locator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AdsCubit>(),
      child: const Scaffold(backgroundColor: Colors.red, body: HomeViewBody()),
    );
  }
}
