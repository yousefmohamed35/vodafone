import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(child: Lottie.asset('assets/json/Loader-big-red.json')),
      //  color: const Color.fromARGB(0, 90, 89, 89).withOpacity(0.5),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     CircularProgressIndicator(color: Colors.white),
      //     const SizedBox(height: 16),
      //     const Text(
      //       'جاري التحميل يرجي الانتظار...',
      //       style: TextStyle(color: Colors.white, fontSize: 16),
      //     ),
      //   ],
      // ),
    );
  }
}
