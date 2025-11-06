import 'package:flutter/material.dart';
import 'package:vodafon/feature/vodafone_cash/models/services_model.dart';

class AllVodafoneCashServices extends StatelessWidget {
  const AllVodafoneCashServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.count(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        shrinkWrap: true,
        children: List.generate(services.length, (index) {
          return ServiceCard(
            title: services[index].title,
            image: services[index].image,
          );
        }),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(image, width: 60, height: 60),
        ),

        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
