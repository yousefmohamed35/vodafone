import 'package:flutter/material.dart';

import 'widgets/ads_view_body.dart';

class AdsView extends StatelessWidget {
  const AdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: BackButton(color: Colors.white),
        title: Text('الإعلانات', style: TextStyle(color: Colors.white)),
      ),
      body: AdsViewBody(),
    );
  }
}
