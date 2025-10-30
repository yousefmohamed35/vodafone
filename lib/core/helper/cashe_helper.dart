import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static SharedPreferences? _prefs;
  static const String _amountKey = 'saved_amount';

  static Future<SharedPreferences> get _instance async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  static Future<void> saveAmount(double value) async {
    final prefs = await _instance;
    await prefs.setDouble(_amountKey, value);
  }

  static Future<double?> getAmount() async {
    final prefs = await _instance;
    return prefs.getDouble(_amountKey);
  }

  static void setBoolean(String key, bool value) async {
    final prefs = await _instance;
    await prefs.setBool(key, value);
  }

  static Future<bool?> getBoolean({required String key}) async {
    final prefs = await _instance;
    return prefs.getBool(key);
  }

  static Future<void> clearAll() async {
    final prefs = await _instance;
    await prefs.clear();
  }

  static Future<void> clearAmount() async {
    final prefs = await _instance;
    await prefs.remove(_amountKey);
  }
}
