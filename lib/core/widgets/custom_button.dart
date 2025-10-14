import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/go_to_home.dart';

import '../../feature/sharing_image/presentation/manager/image_ocr_extract_cubit.dart';
import '../../feature/sharing_image/presentation/manager/sharing_image_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.sharedMediaFile,
  });
  final String title;
  final SharedMediaFile sharedMediaFile;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: () {
        context.read<ImageOcrExtractCubit>().extractDataFromImage(
          sharedMediaFile,
        );
        context.read<SharingImageCubit>().reset();
      },
      child: BlocConsumer<ImageOcrExtractCubit, ImageOcrExtractState>(
        listener: (context, state) {
          if (state is ImageOcrExtractError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
          if (state is ImageOcrExtractLoaded) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const GoToHome()),
            );
          }
        },
        builder: (context, state) {
          if (state is ImageOcrExtractLoading) {
            return Center(
              child: const CircularProgressIndicator(color: Colors.white),
            );
          }
          return Text(title);
        },
      ),
    );
  }
}
