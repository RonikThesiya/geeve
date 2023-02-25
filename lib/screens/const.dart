List<userDetails> dataList = [];
// List<userDetails> data = [];

class userDetails {
  String firstname, lastname, phone, email, password, rePassword;

  userDetails({
    required this.firstname,
    required this.lastname,
    required this.phone,
    required this.email,
    required this.password,
    required this.rePassword,
  });

//   userDetails.fromJson(Map<String, dynamic> json)
//       : firstname = json['firstname'],
//         lastname = json['lastname'],
//         phone = json['phone'],
//         email = json['email'],
//         password = json['password'],
//         rePassword = json['rePassword'];
//
//   Map<String,dynamic> toJson()=>{
//     'firstname':firstname,
//     'lastname':lastname,
//     'phone':phone,
//     'email':email,
//     'password':password,
//     'rePassword':rePassword,
// };


}
