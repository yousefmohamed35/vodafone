import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import '../../feature/sharing_image/presentation/manager/image_ocr_extract_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.sharedMediaFile});
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
        context.read<ImageOcrExtractCubit>().extractInfoFromImage(
          sharedMediaFile,
        );
      },
      child: Text(title),
    );
  }
}
