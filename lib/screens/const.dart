List<userDetails> dataList = [];
List<userDetails> data = [];

class userDetails {
  String firstname, lastname, phone, email, password,rePassword;

  userDetails(
      {required this.firstname,
      required this.lastname,
      required this.phone,
      required this.email,
      required this.password,
      required this.rePassword,
      });
}
