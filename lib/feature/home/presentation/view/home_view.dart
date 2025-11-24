import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/vodafone_cash.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/auto_scroll_banner.dart';

import '../../../../core/services/setup_services_locator.dart';
import '../../../ads/presentation/manager/ads_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AdsCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'فودافون',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          foregroundColor: Colors.red,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AutoScrollBanner(),
                SizedBox(height: 20),
                FlexWidget(),
                SizedBox(height: 10),
                ConsumptionCard(),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: VodafoneCashCard()),
                    SizedBox(width: 5),
                    Expanded(child: recharge()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class recharge extends StatelessWidget {
  const recharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'شحن الرصيد',
              style: TextTheme.of(
                context,
              ).bodyMedium?.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '9.83 جنيه',
                  style: TextTheme.of(
                    context,
                  ).bodyMedium?.copyWith(fontSize: 18),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VodafoneCashCard extends StatelessWidget {
  const VodafoneCashCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return VodafoneCash();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
            colors: [
              Colors.black,
              const Color.fromARGB(255, 85, 12, 7),
              Colors.red,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'فودافون',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'كاش',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class ConsumptionCard extends StatelessWidget {
  const ConsumptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'استهلاكك',
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  spacing: 5,
                  children: List.generate(6, (index) {
                    return CircleAvatar(
                      radius: index == 0 ? 5 : 3,
                      backgroundColor: index == 0
                          ? Colors.red
                          : Colors.grey[300],
                    );
                  }),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'انتهت صلاحية باقتك جدد دلوقتي',
              style: TextTheme.of(
                context,
              ).bodyMedium?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              'علشان تستخدم من فليكساتك.',
              style: TextTheme.of(
                context,
              ).bodyMedium?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'جدد',
                    style: TextTheme.of(context).bodyMedium?.copyWith(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FlexWidget extends StatelessWidget {
  const FlexWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.all(8),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 184, 20, 9),
      ),
      child: Text(
        'فليكس 40',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
