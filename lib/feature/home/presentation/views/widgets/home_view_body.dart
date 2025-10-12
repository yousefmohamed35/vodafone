import 'package:flutter/material.dart';
import 'package:vodafon/core/widgets/custom_container.dart';
import 'package:vodafon/core/widgets/fit_hight.dart';
import 'package:vodafon/feature/home/presentation/views/widgets/auto_scroll_banner.dart';
import 'package:vodafon/feature/home/presentation/views/widgets/wallet_actions.dart';

import 'ads_list_view_builder.dart';
import 'ads_widget.dart';
import 'all_vodafone_cash_services.dart';
import 'meeza_logo.dart';
import 'more_services_card.dart';
import 'partener_list_view_builder.dart';
import 'vodafone_cashe_services.dart';
import 'wallet_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Vodafon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          AutoScrollBanner(),
          SizedBox(height: 10),
          Expanded(
            child: CustomContainer(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WalletInfo(),
                    SizedBox(height: 10),
                    WalletActions(),
                    AdsWidget(),
                    VodafoneCashServices(),
                    AllVodafoneCashServices(),
                    AdsListViewBuilder(),
                    SizedBox(height: 10),
                    MeezaLogo(),
                    SizedBox(height: 20),
                    Text(
                      'Pay with Vodafone Cash at our Partners online stores:',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                    SizedBox(height: 10),
                    PartenerListViewBuilder(),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: Text(
                        'More Services',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    MoreServicesCard(title: 'Create bin'),
                    MoreServicesCard(title: 'Reset bin'),
                    MoreServicesCard(title: 'Cash locator'),
                    MoreServicesCard(title: 'Help and support'),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
