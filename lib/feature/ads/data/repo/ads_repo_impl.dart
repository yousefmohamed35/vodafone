import 'dart:developer';

import 'package:image_picker/image_picker.dart';

import 'ads_repo.dart';

class AdsRepoImpl implements AdsRepo {
  final ImagePicker _imagePicker = ImagePicker();
  List<XFile> ads = [];
  @override
  Future<List<XFile>> fetchAds() async {
    ads = await _imagePicker.pickMultiImage();
    log('ads: ${ads[0].path}');
    return ads;
  }

  
}
