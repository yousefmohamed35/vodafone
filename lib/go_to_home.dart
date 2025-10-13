import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'package:vodafon/feature/home/presentation/views/home_view.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/sharing_image_cubit.dart';
import 'package:vodafon/feature/total/presentation/views/add_total_view.dart';

import 'feature/sharing_image/presentation/views/sharing_image_view.dart';

class GoToHome extends StatefulWidget {
  const GoToHome({super.key});

  @override
  State<GoToHome> createState() => _GoToHomeState();
}

class _GoToHomeState extends State<GoToHome> {
  bool isFirstTime = true;
  @override
  void initState() {
    super.initState();
    _checkFirstTime();
  }

  Future<void> _checkFirstTime() async {
     isFirstTime =
        await SharedPrefHelper.getBoolean(key: 'is_first_time') ?? true;
    log('isFirstTime: $isFirstTime');
    // تأكد إن الـ context جاهز بعد بناء الواجهة
  
  }

  @override
  Widget build(BuildContext context) {
  
    return BlocBuilder<SharingImageCubit, SharingImageState>(
      builder: (context, state) {
        if (state is SharingImageLoaded && state.mediaFiles.isNotEmpty) {
          return SharingImageView(sharedFiles: state.mediaFiles.first);
        } else if (state is SharingImageLoaded && state.mediaFiles.isEmpty){
      
          return isFirstTime ? const AddTotalView() : const HomeView();
        }
        return const Scaffold(body: SizedBox());
      },
    );
  }
}
