import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../models/ads_model.dart';
import 'ads_repo.dart';

class AdsRepoImpl implements AdsRepo {
  final ImagePicker _imagePicker = ImagePicker();
  List<XFile> ads = [];
  @override
  Future<List<XFile>> fetchAds() async {
    ads = await _imagePicker.pickMultiImage(imageQuality: 100);
    log('ads: ${ads[0].path}');
    return ads;
  }

  @override
  Future<void> saveAds(List<XFile> ads) async {
    // i want to save it using hive
    final box = Hive.box<AdsModel>('ads_box');

    for (var ad in ads) {
      box.add(AdsModel(adsPath: ad.path));
    }
    log('ads saved');
    getAds();
  }

  @override
  List<AdsModel> getAds() {
    final box = Hive.box<AdsModel>('ads_box');
    log('adss: ${box.values.toList().first.adsPath}');
    return box.values.toList();
  }
}
