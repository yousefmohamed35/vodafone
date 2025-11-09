import 'package:flutter/material.dart';
import 'package:vodafon/feature/vodafone_cash/models/services_model.dart';

class AllVodafoneCashServices extends StatelessWidget {
  const AllVodafoneCashServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //  alignment: WrapAlignment.center,
      // runSpacing: 8,
      // spacing: 8,
      children: List.generate(services.length, (index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 4 - 8, // نفس فكرة GridView
          child: ServiceCard(
            title: services[index].title,
            image: services[index].image,
          ),
        );
      }),
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
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image, width: 60, height: 60),
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
