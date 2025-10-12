import 'package:flutter/material.dart';
import 'package:vodafon/core/widgets/custom_pin_put.dart';

void showCustomModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // ✅ lets it resize for keyboard
    backgroundColor: Colors.transparent,
    builder: (context) {
      return const CustomPinPut();
    },
  );
}

