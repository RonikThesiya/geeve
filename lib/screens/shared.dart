import 'package:shared_preferences/shared_preferences.dart';

final preferences = SharedPreference();

class SharedPreference {
  static SharedPreferences? pref;

  init() async {
    pref = await SharedPreferences.getInstance();
  }


  static const userFirstname = "user_firstname";
  static const userLastName = "user_lastname";
  static const userPhone = "user_phone";
  static const userEmail = "user_email";
  static const userPassword = "user_password";
  static const userRepassword = "user_Repassword";


  saveUserItem({
    required String firstName,
    required String lastName,
    required  String phone,
    required String email,
    required String password,
    required String repassword,
  }) {

    pref!.setString(userFirstname , firstName);
    pref!.setString(userLastName, lastName);
    pref!.setString(userPhone, phone);
    pref!.setString(userEmail, email);
    pref!.setString(userPassword, password);
    pref!.setString(userRepassword, repassword);
  }

  void clearUserItem(
  //     {
  //   required String firstName,
  //   required String lastName,
  //   required String phone,
  //   required String password,
  //   required String repassword,
  // }
  ) async {
    pref!.clear();
    // pref!.remove(lastName);
    // pref!.remove(phone);
    // pref!.remove(password);
    // pref!.remove(repassword);
  }



  Future<bool?> putString(String key, String value) async {
    return preferences == null ? null : preferences!.putString(key, value);
  }

  String? getString(String key, {String defValue = ""}) {
    return pref == null
        ? defValue
        : pref!.getString(key) ?? defValue;
  }

  Future<bool?> putInt(String key, int value) async {
    return preferences == null ? null : preferences!.putInt(key, value);
  }

  int? getInt(String key, {int defValue = 0}) {
    return pref == null
        ? defValue
        : pref!.getInt(key) ?? defValue;
  }

  Future<bool?> putBool(String key, bool value) async {
    return preferences == null ? null : preferences!.putBool(key, value);
  }

  bool? getBool(String key, {bool defValue = false}) {
    return pref == null
        ? defValue
        : pref!.getBool(key) ?? defValue;
  }
}
