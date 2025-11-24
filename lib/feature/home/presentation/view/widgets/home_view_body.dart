import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/core/widgets/loading_widget.dart';
import 'package:vodafon/feature/home/presentation/manager/first_ads_cubit.dart';
import 'package:vodafon/feature/home/presentation/manager/first_ads_state.dart';

import '../../../../vodafone_cash/presentation/views/widgets/auto_scroll_banner.dart';
import 'consumption_card.dart';
import 'flex_widget.dart';
import 'recharge.dart';
import 'vodafone_cache_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstAdsCubit, FirstAdsState>(
      builder: (context, state) {
        if (state is FirstAdsLoading) {
          return LoadingWidget();
        } else if (state is FirstAdsError) {
          return Center(child: Text(state.message));
        } else if (state is FirstAdsLoaded) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  if (state.firstAds.data != null &&
                      state.firstAds.data!.isNotEmpty)
                    AutoScrollBanner(ads: state.firstAds.data!),
                  SizedBox(height: 20),
                  FlexWidget(),
                  SizedBox(height: 10),
                  ConsumptionCard(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: VodafoneCashCard()),
                      SizedBox(width: 5),
                      Expanded(child: Recharge()),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
