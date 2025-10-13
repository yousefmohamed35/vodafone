import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/sharing_image_cubit.dart';
import 'package:vodafon/feature/sharing_image/presentation/views/sharing_image_view.dart';
import 'package:vodafon/go_to_home.dart';
import 'core/services/setup_services_locator.dart';

class VodafonApp extends StatelessWidget {
  const VodafonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SharingImageCubit>()
        ..loadInitialMedia()
        ..listenToMediaStream(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  const GoToHome(),
        
      ),
    );
  }
}
