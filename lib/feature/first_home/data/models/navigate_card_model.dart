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
    title: 'الإعلانات',
    color: Colors.red,
    icon: Icons.campaign,
  ),
  NavigationCardModel(
    title: 'إضافة معاملة',
    color: Colors.green,
    icon: Icons.add,
  ),
  NavigationCardModel(
    title: 'إضافة الرصيد',
    color: Colors.orange,
    icon: Icons.account_balance_wallet,
  ),
];
