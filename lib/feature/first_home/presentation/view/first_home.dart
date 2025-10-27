import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vodafon/feature/home/presentation/views/home_view.dart';
import 'package:vodafon/feature/total/presentation/views/add_total_view.dart';
import '../../../../core/helper/cashe_helper.dart';
import '../../data/models/navigate_card_model.dart';
import 'widgets/navigate_card.dart';

class FirstHome extends StatefulWidget {
  const FirstHome({super.key});

  @override
  State<FirstHome> createState() => _FirstHomeState();
}

class _FirstHomeState extends State<FirstHome> {
  bool isFirstTime = true;
  @override
  void initState() {
    _checkFirstTime();
    super.initState();
  }

  Future<void> _checkFirstTime() async {
    isFirstTime =
        await SharedPrefHelper.getBoolean(key: 'is_first_time') ?? true;
    setState(() {});
    log('isFirstTime: $isFirstTime');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationCard(
                cardModel: navigationCards[0],
                onTap: isFirstTime
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'يرجى إضافة الرصيد أولا',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                        );
                      },
              ),
              SizedBox(width: 10),
              NavigationCard(
                cardModel: navigationCards[1],
                onTap: isFirstTime
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'يرجى إضافة الرصيد أولا',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }
                    : () {},
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigationCard(
                cardModel: navigationCards[2],
                onTap: isFirstTime
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'يرجى إضافة الرصيد أولا',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }
                    : () {},
              ),
              SizedBox(width: 10),
              NavigationCard(
                cardModel: navigationCards[3],
                onTap: isFirstTime
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddTotalView(),
                          ),
                        );
                      }
                    : () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                              'لا يمكنك إضافة رصيد أكثر من مرة',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
