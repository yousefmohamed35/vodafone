import 'package:dio/dio.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

class AddTransactionOcrModel {
  final String clientId;
  final List<SharedMediaFile> images;

  AddTransactionOcrModel({required this.clientId, required this.images});

  Future<FormData> toFormData() async {
    final Map<String, dynamic> map = {
      "client_id": clientId,
    };

    final formData = FormData.fromMap(map);

    for (int i = 0; i < images.length; i++) {
      formData.files.add(
        MapEntry(
          'images[$i]',
          await MultipartFile.fromFile(
            images[i].path,
            filename: images[i].path.split('/').last,
          ),
        ),
      );
    }

    return formData;
  }
}
