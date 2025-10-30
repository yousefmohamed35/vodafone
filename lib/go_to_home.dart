import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/sharing_image_cubit.dart';
import 'feature/first_home/presentation/view/first_home.dart';
import 'feature/sharing_image/presentation/views/sharing_image_view.dart';

class GoToHome extends StatefulWidget {
  const GoToHome({super.key});

  @override
  State<GoToHome> createState() => _GoToHomeState();
}

class _GoToHomeState extends State<GoToHome> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SharingImageCubit, SharingImageState>(
      builder: (context, state) {
        if (state is SharingImageLoaded && state.mediaFiles.isNotEmpty) {
          log('the first media: ${state.mediaFiles.first.type}');
          return SharingImageView(sharedFiles: state.mediaFiles);
        } else if (state is SharingImageLoaded && state.mediaFiles.isEmpty) {
          return FirstHome();
        }
        return const Scaffold(body: SizedBox());
      },
    );
  }
}
