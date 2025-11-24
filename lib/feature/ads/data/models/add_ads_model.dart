import 'package:dio/dio.dart';

class AddAdsModel {
  final String type;
  final List<String> imagePaths; // paths of images from gallery or camera

  AddAdsModel({
    required this.type,
    required this.imagePaths,
  });

  Future<FormData> toFormData() async {
    final Map<String, dynamic> map = {
      "type": type,
    };

    // Add images[i]
    for (int i = 0; i < imagePaths.length; i++) {
      map["images[$i]"] = await MultipartFile.fromFile(
        imagePaths[i],
        filename: imagePaths[i].split("/").last,
      );
    }

    return FormData.fromMap(map);
  }
}
