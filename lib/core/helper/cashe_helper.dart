import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static SharedPreferences? _prefs;

  static const String amountKey = 'saved_amount';

  static Future<SharedPreferences> get _instance async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  // Save amount
  static Future<void> saveAmount(double value) async {
    final prefs = await _instance;
    await prefs.setDouble(amountKey, value);
  }

  static Future<double?> getAmount() async {
    final prefs = await _instance;
    return prefs.getDouble(amountKey);
  }

  static Future<void> saveString(String key, String value) async {
    final prefs = await _instance;
    await prefs.setString(key, value);
  }

  static Future<String?> getString(String key) async {
    final prefs = await _instance;
    return prefs.getString(key);
  }

  static Future<void> saveInt(String key, int value) async {
    final prefs = await _instance;
    await prefs.setInt(key, value);
  }

  static Future<int?> getInt(String key) async {
    final prefs = await _instance;
    return prefs.getInt(key);
  }

  // Save Boolean
  static Future<void> setBoolean(String key, bool value) async {
    final prefs = await _instance;
    await prefs.setBool(key, value);
  }

  static Future<bool?> getBoolean(String key) async {
    final prefs = await _instance;
    return prefs.getBool(key);
  }

  // Clear
  static Future<void> clearAll() async {
    final prefs = await _instance;
    await prefs.clear();
  }

  static Future<void> clearAmount() async {
    final prefs = await _instance;
    await prefs.remove(amountKey);
  }
}
