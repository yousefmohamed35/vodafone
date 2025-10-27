import 'package:hive/hive.dart';
part 'ads_model.g.dart';

@HiveType(typeId: 3)
class AdsModel extends HiveObject {
  @HiveField(0)
  final String adsPath;

  AdsModel({required this.adsPath});
}
