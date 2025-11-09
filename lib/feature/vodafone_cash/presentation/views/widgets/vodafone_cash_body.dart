import 'package:flutter/material.dart';
import 'package:vodafon/core/widgets/custom_container.dart';
import 'package:vodafon/core/widgets/fit_hight.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/last_invoice.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/wallet_actions.dart';
import 'ads_list_view_builder.dart';
import 'ads_widget.dart';
import 'all_vodafone_cash_services.dart';
import 'meeza_logo.dart';
import 'more_services_card.dart';
import 'partener_list_view_builder.dart';
import 'vodafone_cashe_services.dart';
import 'wallet_info.dart';

class VodafoneCashBody extends StatelessWidget {
  const VodafoneCashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FitHieght(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: WalletInfo(),
          ),
          LastInvoice(),
          SizedBox(height: 10),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomContainer(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 130),
                      AdsWidget(),
                      VodafoneCashServices(),
                      AllVodafoneCashServices(),
                      AdsListViewBuilder(),
                      SizedBox(height: 10),
                      MeezaLogo(),
                      SizedBox(height: 20),
                      Text(
                        'ادفع أونلاين بفودافون كاش عند شركائنا:',
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
                          'المزيد من الخدمات',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      MoreServicesCard(title: 'انشئ رقم سري'),
                      MoreServicesCard(title: 'تغيير الرقم السري'),
                      MoreServicesCard(title: 'الفروع'),
                      MoreServicesCard(title: 'المساعدة'),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Positioned(right: 0, left: 0, top: -10, child: WalletActions()),
            ],
          ),
        ],
      ),
    );
  }
}
