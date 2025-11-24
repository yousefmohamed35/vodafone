import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ads/data/models/ads_model.dart';
import '../../../../ads/presentation/manager/ads_cubit.dart';
import '../../../models/second_ads_model/datum.dart';

class AutoScrollBanner extends StatefulWidget {
  const AutoScrollBanner({super.key, required this.ads});
  final List<Datum> ads;
  @override
  State<AutoScrollBanner> createState() => _AutoScrollBannerState();
}

class _AutoScrollBannerState extends State<AutoScrollBanner> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // صور من الـ assets

  Timer? _timer;
  // List<AdsModel> ads = [];
  @override
  void initState() {
    super.initState(); // Fetch ads when the widget is initialized>
  //  _startAutoScroll();
  }

  // void _startAutoScroll() {
  //   _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
  //     if (_currentPage < widget.ads.length - 1) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }

  //     _pageController.animateToPage(
  //       _currentPage,
  //       duration: const Duration(milliseconds: 400),
  //       curve: Curves.easeInOut,
  //     );
  //   });
  // }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,

          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.ads.length,
            onPageChanged: (index) {
              setState(() => _currentPage = index);
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: widget.ads[index].imageUrl!,
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.ads.length, (index) {
            bool isActive = index == _currentPage;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 12 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: isActive ? Colors.red : Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }),
        ),
      ],
    );
  }
}
