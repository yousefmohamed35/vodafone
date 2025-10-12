import 'package:flutter/material.dart';
import 'package:vodafon/feature/home/models/services_model.dart';

class AllVodafoneCashServices extends StatelessWidget {
  const AllVodafoneCashServices({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
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
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(30),
          ),

          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(image, width: 20, height: 20),
          ),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
