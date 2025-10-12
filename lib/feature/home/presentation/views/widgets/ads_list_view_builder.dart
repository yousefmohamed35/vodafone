import 'package:flutter/material.dart';

class AdsListViewBuilder extends StatelessWidget {
  const AdsListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: adsImages.length,
        itemBuilder: (context, index) {
          return Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(adsImages[index], fit: BoxFit.fill),
            ),
          );
        },
      ),
    );
  }
}

List<String> adsImages = [
  'assets/promo1.png',
  'assets/promo2.jpg',
  'assets/promo3.webp',
];