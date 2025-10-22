import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/image_ocr_extract_cubit.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/sharing_image_cubit.dart';
import 'package:vodafon/go_to_home.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../data/repos/sharing_image_repo_impl.dart';

class SharingImageView extends StatelessWidget {
  const SharingImageView({super.key, required this.sharedFiles});
  final SharedMediaFile sharedFiles;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageOcrExtractCubit(SharingImageRepoImpl()),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Image.file(
                File(sharedFiles.path),
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  log("❌ Image load error: $error");
                  return Container(
                    height: 200,
                    color: Colors.grey[300],
                    child: Center(child: Text("!حدث خطأ في تحميل الصورة")),
                  );
                },
              ),
              Positioned(
                top: 8,
                right: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.red[400],
                  child: IconButton(
                    icon: const Icon(Icons.close, color: Colors.black),
                    onPressed: () {
                      context.read<SharingImageCubit>().reset();

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GoToHome(),
                        ),
                      );
                      // Handle cancellation logic here
                    },
                  ),
                ),
              ),

              Positioned(
                bottom: 16,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8.0,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 32,

                    child: CustomButton(
                      title: 'حفظ الايصال',
                      sharedMediaFile: sharedFiles,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
