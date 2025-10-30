import 'package:flutter/material.dart';
import 'package:vodafon/core/widgets/custom_pin_put.dart';

void showCustomModalBottomSheet(
  BuildContext context, {
  required void Function(String)? onCompleted,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: CustomPinPut(onCompleted: onCompleted),
      );
    },
  );
}
