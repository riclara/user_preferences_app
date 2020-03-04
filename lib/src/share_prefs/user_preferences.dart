import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._internal();

  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // bool _secondaryColor = false;
  // int _gender;
  // String _name = 'Pedro';

  get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  set gender (value) {
    _prefs.setInt('gender', value);
  }

  get secondaryColor {
    return _prefs.getBool('secondaryColor') ?? false;
  }

  set secondaryColor (value) {
    _prefs.setBool('secondaryColor', value);
  }

  get name {
    return _prefs.getString('name') ?? '';
  }

  set name (value) {
    _prefs.setString('name', value);
  }
}