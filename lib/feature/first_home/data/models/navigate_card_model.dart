import 'package:flutter/material.dart';

class NavigationCardModel {
  final String title;
  final Color color;
  final IconData icon;

  NavigationCardModel({
    required this.title,
    required this.color,
    required this.icon,
  });
}

final List<NavigationCardModel> navigationCards = [
  NavigationCardModel(
    title: 'الصفحة الرئيسية',
    color: Colors.blue,
    icon: Icons.home,
  ),
  NavigationCardModel(
    title: 'الإعلان الأول',
    color: Colors.red,
    icon: Icons.campaign,
  ),
  NavigationCardModel(
    title: 'إضافة معاملة',
    color: Colors.green,
    icon: Icons.add,
  ),
  NavigationCardModel(
    title: 'الإعلان الثاني',
    color: Colors.blueGrey,
    icon: Icons.campaign,
  ),
];
