import 'package:flutter/material.dart';

class AdsViewBody extends StatefulWidget {
  const AdsViewBody({super.key});

  @override
  State<AdsViewBody> createState() => _AdsViewBodyState();
}

class _AdsViewBodyState extends State<AdsViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              
            },
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Icon(Icons.add, size: 40, color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}
