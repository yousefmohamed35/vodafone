import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class SharingImageView extends StatelessWidget {
  const SharingImageView({super.key,required this.sharedFiles});
final SharedMediaFile sharedFiles;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                        child: Center(child: Text("Error: $error")),
                      );
                    },
                  ),
                  
                  Positioned(
                    bottom: 16,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Share"),
                    ),
                  ),
                ],
              );
  }
}