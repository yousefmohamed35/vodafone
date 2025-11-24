import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/home/presentation/manager/first_ads_cubit.dart';
import '../../../../core/services/setup_services_locator.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<FirstAdsCubit>()..fetchFirstAds(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'فودافون',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          foregroundColor: Colors.red,
          backgroundColor: Colors.transparent,
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
