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
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/voda.png'),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ],
          foregroundColor: Colors.red,
          backgroundColor: Colors.transparent,
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
