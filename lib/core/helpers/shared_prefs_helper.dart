import 'package:shared_preferences/shared_preferences.dart';

/// A clean, reusable helper for working with SharedPreferences.
/// Designed for scalability and easy integration with any feature.
class SharedPrefsHelper {
  static SharedPreferences? _prefs;

  /// Call this once (in main) before using any SharedPrefsHelper method.
  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  /// --------------------------
  /// 🧠 Generic Save & Get
  /// --------------------------

  static Future<bool> setString(String key, String value) async {
    return await _prefs?.setString(key, value) ?? false;
  }

  static Future<bool> setBool(String key, bool value) async {
    return await _prefs?.setBool(key, value) ?? false;
  }

  static Future<bool> setInt(String key, int value) async {
    return await _prefs?.setInt(key, value) ?? false;
  }

  static Future<bool> setDouble(String key, double value) async {
    return await _prefs?.setDouble(key, value) ?? false;
  }

  static String? getString(String key) => _prefs?.getString(key);

  static bool? getBool(String key) => _prefs?.getBool(key);

  static int? getInt(String key) => _prefs?.getInt(key);

  static double? getDouble(String key) => _prefs?.getDouble(key);

   // --------------------------
  // 🕐 Cache Timestamp Keys
  // --------------------------
  static const String _keyLastFetchPrefix = 'last_fetch_';
  
  /// Save when data was last fetched
  static Future<void> saveLastFetchTime(String key) async {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    await setInt('$_keyLastFetchPrefix$key', timestamp);
  }
  
  /// Get when data was last fetched
  static DateTime? getLastFetchTime(String key) {
    final timestamp = getInt('$_keyLastFetchPrefix$key');
    if (timestamp == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }
  
  /// Save cached data as JSON string
  static Future<void> saveJsonData(String key, String jsonData) async {
    await setString(key, jsonData);
    await saveLastFetchTime(key);
  }
  
  /// Get cached JSON data
  static String? getJsonData(String key) {
    return getString(key);
  }

  /// --------------------------
  /// 🧩 Specific App Data Keys
  /// --------------------------
  static const String _keyLocale = 'app_locale';
  static const String _keyToken = 'auth_token';
  static const String _keyTheme = 'app_theme';

  /// Locale (language) handling
  static Future<void> saveLocale(String localeCode) async {
    await setString(_keyLocale, localeCode);
  }

  static String? getLocale() => getString(_keyLocale);

  /// Auth token handling
  static Future<void> saveToken(String token) async {
    await setString(_keyToken, token);
  }

  static String? getToken() => getString(_keyToken);

  /// Theme (dark/light mode)
  static Future<void> saveTheme(bool isDark) async {
    await setBool(_keyTheme, isDark);
  }

  static bool? getTheme() => getBool(_keyTheme);

  /// --------------------------
  /// 🔄 Utilities
  /// --------------------------
  static Future<bool> remove(String key) async {
    return await _prefs?.remove(key) ?? false;
  }

  static Future<bool> clearAll() async {
    return await _prefs?.clear() ?? false;
  }
}
