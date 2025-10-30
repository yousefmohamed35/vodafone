import 'package:flutter/material.dart';

class MeezaLogo extends StatelessWidget {
  const MeezaLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/meeza.png', height: 30, width: 60),
        Expanded(child: Divider(color: Colors.grey[200], thickness: 1)),
      ],
    );
  }
}
