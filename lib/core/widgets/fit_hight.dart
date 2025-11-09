import 'package:flutter/material.dart';

class FitHieght extends StatelessWidget {
  const FitHieght({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [child],
            ),
          ),
        );
      },
    );
  }
}
