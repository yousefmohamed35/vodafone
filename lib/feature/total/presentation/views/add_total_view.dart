import 'package:flutter/material.dart';
import 'package:vodafon/feature/total/presentation/views/widgets/add_total_view_body.dart';

class AddTotalView extends StatelessWidget {
  const AddTotalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/Vodafonelogo.png', height: 100, width: 100),
      ),
      body: AddTotalViewBody(),
    );
  }
}
