import 'package:image_picker/image_picker.dart';
import 'package:vodafon/feature/ads/data/models/ads_model.dart';

abstract class AdsRepo {
 Future<List<XFile>> fetchAds();
 Future<void> saveAds(List<XFile> ads);
 List<AdsModel>  getAds();
}