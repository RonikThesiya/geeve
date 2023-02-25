import 'package:flutter/material.dart';
import 'package:geeve/screens/const.dart';
import 'package:geeve/screens/shared.dart';
import 'package:geeve/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  final int? index;

  SignUpScreen({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ischecked = false;

  final _formKey = GlobalKey<FormState>();

  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  TextEditingController txtrepassword = TextEditingController();
  TextEditingController txtfirstname = TextEditingController();
  TextEditingController txtlastname = TextEditingController();
  TextEditingController txtphone = TextEditingController();


  String uFirstname =
      preferences.getString(SharedPreference.userFirstname) ?? "";
  String uLastname = preferences.getString(SharedPreference.userLastName) ?? "";
  String uPhone = preferences.getString(SharedPreference.userPhone) ?? "";
  String uEmail = preferences.getString(SharedPreference.userEmail) ?? "";
  String uPassword = preferences.getString(SharedPreference.userPassword) ?? "";
  String uRepassword = preferences.getString(SharedPreference.userRepassword) ??
      "";

  TextEditingController updateemail = TextEditingController();
  TextEditingController updateFirstname = TextEditingController();
  TextEditingController updateLastname = TextEditingController();
  TextEditingController updatePhone = TextEditingController();
  TextEditingController updatePassword = TextEditingController();
  TextEditingController updateRepassword = TextEditingController();


  @override
  void initState() {
    updateemail.text = uEmail;
    updateFirstname.text = uFirstname;
    updateLastname.text = uLastname;
    updatePhone.text = uPhone;


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffffffff),
            body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/background.png"),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Center(
                              child: Image.asset(
                                "assets/logo.png",
                                height: 120,
                                width: 180,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter FirstName";
                                }
                              },
                              controller: dataList.isEmpty
                                  ? txtfirstname
                                  : updateFirstname,
                              decoration: InputDecoration(
                                hintText: "First Name",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 25, right: 25),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter LastName";
                                }
                              },
                              controller: dataList.isEmpty
                                  ? txtlastname
                                  : updateLastname,
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 25, right: 25),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Phone Number";
                                }
                              },
                              keyboardType: TextInputType.number,
                              controller: dataList.isEmpty
                                  ? txtphone
                                  : updatePhone,
                              decoration: InputDecoration(
                                hintText: "Phone",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 25, right: 25),
                            child: TextFormField(
                              style: dataList.isEmpty ? TextStyle(
                                  color: Colors.black) : TextStyle(
                                  color: Colors.grey),
                              enabled: dataList.isEmpty ? true : false,

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Email";
                                }
                              },
                              controller: dataList.isEmpty
                                  ? txtemail
                                  : updateemail,
                              decoration: InputDecoration(
                                hintText: "Email",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 25, right: 25),
                            child: TextFormField(
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Password";
                                }
                                if (value != txtrepassword.text) {
                                  return " Password does not match";
                                }
                              },
                              controller: txtpassword,
                              decoration: InputDecoration(
                                hintText: "Password",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 25, left: 25, right: 25),
                            child: TextFormField(
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Re-Enter Password";
                                }
                                if (value != txtpassword.text) {
                                  return " Password does not match";
                                }
                              },
                              controller: txtrepassword,
                              decoration: InputDecoration(
                                hintText: "Re-enter Password",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 20, top: 20),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 1.5,
                                  child: Checkbox(
                                      checkColor: Colors.white,
                                      fillColor: MaterialStateProperty.all(
                                          Color(0xfffa7914)),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(6)),
                                      value: ischecked,
                                      onChanged: (bool? valuee) {
                                        setState(() {
                                          ischecked = valuee!;
                                          print(valuee);
                                        });
                                      }),
                                ),
                                Text.rich(TextSpan(
                                    text: "I agree to the geeve ",
                                    style: TextStyle(fontSize: 10),
                                    children: [
                                      TextSpan(
                                          text: "Terms and Conditions",
                                          style: TextStyle(
                                              color: Color(0xfffa7914)))
                                    ]))
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: SizedBox(
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height * 0.07,
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.8,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Color(0xffdee1e6),
                                        elevation: 10,
                                        backgroundColor: Color(0xfffa7914),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(50))),
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        if (ischecked == false) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                              duration:
                                              Duration(seconds: 2),
                                              content: Text(
                                                  "Please Accept Term And condition")));
                                        } else {
                                          preferences.saveUserItem(
                                              firstName: dataList.isEmpty
                                                  ? txtfirstname.text
                                                  : updateFirstname.text,
                                              lastName: dataList.isEmpty
                                                  ? txtlastname.text
                                                  : updateLastname.text,
                                              password: txtpassword.text,
                                              email: dataList.isEmpty ? txtemail
                                                  .text : updateemail.text,
                                              phone: dataList.isEmpty ? txtphone
                                                  .text : updatePhone.text,
                                              repassword: txtrepassword.text);

                                          // dataList.add(userDetails(
                                          //   firstname: "${uFirstname}",
                                          //   lastname: "${uLastname}",
                                          //   phone: "${uPhone}",
                                          //   email: "${uEmail}",
                                          //   password: "${uPassword}",
                                          //   rePassword: "${uRepassword}",
                                          // ));

                                          dataList.isEmpty?

                                          Navigator.pushReplacementNamed(
                                              context, "sigin"): Navigator.pushReplacementNamed(
                                              context, "nonprofit");
                                        }
                                        //
                                        // else {
                                        //
                                        //
                                        //
                                        //
                                        //

                                        //
                                        //
                                        //       );
                                        //
                                        //
                                        //     }
                                        // else
                                        //   {
                                        //   dataList[widget.index!].firstname = txtfirstname.text;
                                        //   dataList[widget.index!].lastname = txtlastname.text;
                                        //   dataList[widget.index!].phone = txtphone.text;
                                        //   dataList[widget.index!].email = txtemail.text;
                                        //   dataList[widget.index!].password = txtpassword.text;
                                        //   dataList[widget.index!].rePassword = txtrepassword.text;
                                        //
                                        //   Navigator.pushReplacementNamed(
                                        //       context, "nonprofit",
                                        //       arguments: dataList);
                                        //
                                        //   }
                                      }
                                    },
                                    child: dataList.isEmpty
                                        ? Text("Sign Up")
                                        : Text("Update"),
                                  )
                                // ElevatedButton(
                                //   style: ElevatedButton.styleFrom(
                                //       shadowColor: Color(0xffdee1e6),
                                //       elevation: 10,
                                //       backgroundColor: Color(0xfffa7914),
                                //       shape: RoundedRectangleBorder(
                                //           borderRadius:
                                //           BorderRadius.circular(50))),
                                //   onPressed: () {
                                //     if (_formKey.currentState!.validate()) {
                                //       if (ischecked == false) {
                                //         ScaffoldMessenger.of(context)
                                //             .showSnackBar(SnackBar(
                                //             duration: Duration(seconds: 2),
                                //             content: Text(
                                //                 "Please Accept Term And condition")));
                                //       } else {
                                //
                                //         data.add(userDetails(
                                //           firstname: txtfirstname.text,
                                //           lastname: txtlastname.text,
                                //           phone: txtphone.text,
                                //           email: txtemail.text,
                                //           password: txtpassword.text,
                                //           rePassword: txtrepassword.text,
                                //         ));
                                //         Navigator.pushReplacementNamed(
                                //             context, "sigin",
                                //             arguments: dataList);
                                //
                                //
                                //       }
                                //     }
                                //   },
                                //   child: Text("Update"),
                                // )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text("Already have an account?"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: TextButton(
                              child: Text(
                                "Sign In",
                                style: TextStyle(color: Color(0xfffa7914)),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "sigin");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
