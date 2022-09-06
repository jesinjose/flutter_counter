import 'package:flutter_counter/Models/LoginModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  static SharedPreferences? _preferences;

  static const _keyUsername = 'username';
  static const _modelData = 'model';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(String name) async =>
      await _preferences!.setString(_keyUsername, name);

  static String? getUsername() => _preferences!.getString(_keyUsername);


}
