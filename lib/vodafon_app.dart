import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/sharing_image_cubit.dart';
import 'package:vodafon/feature/sharing_image/presentation/views/sharing_image_view.dart';
import 'package:vodafon/go_to_home.dart';
import 'core/services/setup_services_locator.dart';
import 'generated/l10n.dart';

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
                    SharingImageView(sharedFiles: state.mediaFiles),
              ),
              (route) => false,
            );
            context.read<SharingImageCubit>().reset();
          }
        },
        child: MaterialApp(
          locale: const Locale('ar'),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [const Locale('ar')],

          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          home: const GoToHome(),
        ),
      ),
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
