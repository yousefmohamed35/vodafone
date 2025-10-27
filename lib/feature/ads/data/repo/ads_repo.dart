import 'package:image_picker/image_picker.dart';

abstract class AdsRepo {
 Future<List<XFile>> fetchAds();
 Future<void> saveAds(List<XFile> ads);
}