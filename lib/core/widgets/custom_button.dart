import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:vodafon/feature/sharing_image/presentation/manager/ocrfromapi/ocrfromapi_cubit.dart';
import 'package:vodafon/go_to_home.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.sharedMediaFile,
  });

  final String title;
  final List<SharedMediaFile> sharedMediaFile;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OcrfromapiCubit, OcrfromapiState>(
      listener: (context, state) {
        if (state is OcrfromapiFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error)));
        }

        if (state is OcrfromapiSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const GoToHome()),
          );
        }
      },
      builder: (context, state) {
        final isLoading = state is OcrfromapiLoading;

        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: isLoading
              ? null
              : () {
                  context.read<OcrfromapiCubit>().getDataFromApi(
                    images: sharedMediaFile,
                  );
                },
          child: isLoading
              ? const SizedBox(
                  height: 22,
                  width: 22,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Text(title),
        );
      },
    );
  }
}
