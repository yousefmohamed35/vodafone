import 'package:flutter/material.dart';
import 'package:vodafon/feature/vodafone_cash/presentation/views/widgets/vodafone_cash_body.dart';

class VodafoneCash extends StatelessWidget {
  const VodafoneCash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('فوادفون كاش'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: VodafoneCashBody(),
    );
  }
}
