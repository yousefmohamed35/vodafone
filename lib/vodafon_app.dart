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
      child: BlocListener<SharingImageCubit, SharingImageState>(
        listener: (context, state) {
          if (state is SharingImageLoaded && state.mediaFiles.isNotEmpty) {
            navigatorKey.currentState?.pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) =>
                    SharingImageView(sharedFiles: state.mediaFiles.first),
              ),
              (route) => false,
            );
            context.read<SharingImageCubit>().reset();
          }
        },
        child: MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          home: const GoToHome(),
        ),
      ),
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
