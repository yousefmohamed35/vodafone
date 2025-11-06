import 'package:flutter/material.dart';

class PartenerListViewBuilder extends StatelessWidget {
  const PartenerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.grey[100],
      height: 50,

      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: partenerImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(partenerImages[index], height: 30, width: 80),
          );
        },
      ),
    );
  }
}

List<String> partenerImages = [
  'assets/amazon.png',

  'assets/homzmart.png',
  'assets/noon.png',
  'assets/ranin.png',
  'assets/carrefour.png',
  'assets/meeza.png',
];
