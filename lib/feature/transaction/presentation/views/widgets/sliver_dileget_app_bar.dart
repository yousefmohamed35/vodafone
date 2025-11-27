import 'package:flutter/material.dart';

import 'filter_section.dart';
import 'head_app_bar.dart';
import 'transaction_balance_app_bar.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double amount;

  SliverAppBarDelegate({required this.amount});
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 20),
          HeadAppBar(),
          TransactionBalanceAppBar(amount: amount),
          FilterSection(),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Divider()],
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 240;

  @override
  double get minExtent => 240;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
