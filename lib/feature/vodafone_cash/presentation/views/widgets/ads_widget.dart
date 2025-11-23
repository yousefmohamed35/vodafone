import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/manager/second_ads_cubit.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondAdsCubit, SecondAdsState>(
      builder: (context, state) {
        if (state is SecondAdsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is SecondAdsError) {
          return Center(child: Text('Error: ${state.message}'));
        } else if (state is SecondAdsLoaded) {
          final ads = state.secondAds.data;
          return SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ads!.length,
              itemBuilder: (context, index) {
                final ad = ads[index];
                return Container(
                  width:
                      MediaQuery.of(context).size.width *
                      0.8, // ⬅️ عرض كبير للصورة
                  margin: const EdgeInsets.only(right: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      imageUrl: ad.imageUrl!,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          );
        }
        return Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/Home Wireless_Strip Banner-Desktop-1.jpg',
              fit: BoxFit.fill,
              height: 85,
            ),
          ),
        );
      },
    );
  }
}
