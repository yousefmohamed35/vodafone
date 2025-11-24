import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vodafon/feature/ads/presentation/manager/ads_cubit.dart';
import 'ads_button.dart';
import 'package:vodafon/core/widgets/loading_widget.dart';

class AdsViewBody extends StatefulWidget {
  const AdsViewBody({super.key, required this.type});
  final String type;

  @override
  State<AdsViewBody> createState() => _AdsViewBodyState();
}

class _AdsViewBodyState extends State<AdsViewBody> {
  List<XFile> ads = [];

  @override
  void initState() {
    super.initState();
    ads = context.read<AdsCubit>().ads;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdsCubit, AdsState>(
      listener: (context, state) {
        if (state is AdsError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        } else if (state is SaveAdsError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        } else if (state is SaveAdsSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
          Navigator.pop(context);
        }
      },

      builder: (context, state) {
        if (state is AdsLoaded) {
          ads = state.ads;
        }
        if (state is AdsLoading) {
          return const LoadingWidget();
        }
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {
                    context.read<AdsCubit>().fetchAds();
                  },
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(height: 10),
                        Text(
                          'الصورة لازم تكون 400*130',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Icon(Icons.add, size: 40, color: Colors.grey),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // IMAGES LIST
                if (ads.isNotEmpty)
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(ads.length, (index) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: FileImage(File(ads[index].path)),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: -8,
                            right: -8,
                            child: GestureDetector(
                              onTap: () {
                                context.read<AdsCubit>().deleteAd(ads[index]);
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(
                                  Icons.close,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  )
                else
                  const Center(
                    child: Text(
                      "لا يوجد اعلانات",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),

                const SizedBox(height: 20),

                Visibility(
                  visible: ads.isNotEmpty,
                  child: AdsButton(
                    onPressed: () {
                      context.read<AdsCubit>().saveAds(type: widget.type);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
