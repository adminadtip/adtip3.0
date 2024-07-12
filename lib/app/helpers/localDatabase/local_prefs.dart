import 'package:shared_preferences/shared_preferences.dart';

class LocalPrefs {
  static final _instance = LocalPrefs._();
  SharedPreferences? _preferences;

  LocalPrefs._();
  factory LocalPrefs() {
    return _instance;
  }

  init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  bool getLocalPrefBool({required String key}) {
    return _preferences?.getBool(key) ?? false;
  }

  void setLocalPrefBool({required String key, required bool value}) {
    _preferences?.setBool(key, value);
  }

  double? getCurrentLocation() {
    return _preferences?.getDouble('latitude');
  }

  Future<bool>? setStringPref({required String key, required String value}) {
    return _preferences?.setString(key, value);
  }

  Future<bool>? setIntegerPref({required String key, required int value}) {
    return _preferences?.setInt(key, value);
  }

  String? getStringPref({required String key}) {
    return _preferences?.getString(key);
  }

  int? getIntegerPref({required String key}) {
    return _preferences?.getInt(key);
  }

  bool? checkContainsKey({required String key}) {
    return _preferences?.containsKey(key);
  }

  Future<bool>? removeKey({required String key}) {
    return _preferences?.remove(key);
  }

  void setCurrentLocation(
      {required double latitude, required double longitude}) {
    _preferences?.setDouble('latitude', latitude);
    _preferences?.setDouble('longitude', longitude);
  }
}
