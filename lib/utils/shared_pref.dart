import 'package:geeve/screens/const.dart';
import 'package:shared_preferences/shared_preferences.dart';


String firstName = "firstname";
String lastName = "firstname";
String phone = "firstname";
String email = "firstname";
String password = "firstname";
String Repassword = "firstname";






//
// void getData(String firstName,
//     String lastName,
//     String phone,
//     String email,
//     String password,
//     String repassword,) async
// {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//
//
//   userDetails user = userDetails(
//       firstname: firstName,
//       lastname: lastName,
//       phone: phone,
//       email: email,
//       password: password,
//       rePassword: repassword);

//   // String json = jsonEncode(user);
// // print(json);
//
//
// sharedPreferences.setString("userData");
//
//
// }
//
//
// void setData(userDetails user)async
// {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//
//
//
//
//   // Map<String,dynamic> jsonData = jsonDecode(sharedPreferences.getString("userData")!);
//   // var json = userDetails.fromJson(jsonData);
//
//
//
//
//
//   // Map<String,dynamic> jsonDetails = jsonDecode(sharedPreferences.getString("userData")!);
//
//   // var user = userDetails.fromJson(jsonDetails);
//
//   // if(jsonDetails.isNotEmpty)
//   //   {
//   //     print(user.firstname);
//   //     print(user.lastname);
//   //
//   //     SignUpScreen.txtfirstname.value = TextEditingValue(text: user.firstname!);
//   //     SignUpScreen.txtlastname.value = TextEditingValue(text: user.lastname!);
//   //     SignUpScreen.txtphone.value = TextEditingValue(text: user.phone!);
//   //     SignUpScreen.txtemail.value = TextEditingValue(text: user.email!);
//   //     SignUpScreen.txtpassword.value = TextEditingValue(text: user.password!);
//   //     SignUpScreen.txtrepassword.value = TextEditingValue(text: user.rePassword!);
//   //   }
//
// }
//
//

















//
//
//
// void UserAllData(
//   String firstName,
//   String lastName,
//   String phone,
//   String email,
//   String password,
//   String repassword,
// ) async {
//   SharedPreferences sharedPref = await SharedPreferences.getInstance();
//
//   sharedPref.setString("firstname", firstName);
//   sharedPref.setString("lastname", lastName);
//   sharedPref.setString("phone", phone);
//   sharedPref.setString("email", email);
//   sharedPref.setString("password", password);
//   sharedPref.setString("repassword", repassword);
// }
//
// Future<String?> FirstName() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   return sharedPreferences.getString('firstname');
// }
//
// Future<String?> Lastname() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   return sharedPreferences.getString('lastname');
// }
//
// Future<String?> Phone() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   return sharedPreferences.getString('phone');
// }
//
// Future<String?> Email() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   return sharedPreferences.getString('email');
// }
//
// Future<String?> Password() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   return sharedPreferences.getString('password');
// }
//
// Future<String?> RePassword() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   return sharedPreferences.getString('repassword');
// }
