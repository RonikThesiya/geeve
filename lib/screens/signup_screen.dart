
import 'package:flutter/material.dart';
import 'package:geeve/screens/const.dart';
import 'package:geeve/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {

final int? index;
static TextEditingController txtemail = TextEditingController();
static TextEditingController txtpassword = TextEditingController();
static TextEditingController txtrepassword = TextEditingController();
static TextEditingController txtfirstname = TextEditingController();
static TextEditingController txtlastname = TextEditingController();
static TextEditingController txtphone = TextEditingController();


   SignUpScreen({Key? key, this.index,}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ischecked = false;

  final _formKey = GlobalKey<FormState>();



  late SharedPreferences sharedPreferences;




  @override
  void initState() {

    ReadData();

    print("==========================${widget.index}============================");
 if(widget.index != null)
   {
     getData();
   }



    super.initState();
  }

  void getData()
  {
    SignUpScreen.txtfirstname.text = dataList[widget.index!].firstname!;
    SignUpScreen.txtlastname.text = dataList[widget.index!].lastname!;
    SignUpScreen.txtphone.text = dataList[widget.index!].phone!;
    SignUpScreen.txtemail.text = dataList[widget.index!].email!;
    SignUpScreen.txtpassword.text = dataList[widget.index!].password!;
    SignUpScreen.txtrepassword.text = dataList[widget.index!].rePassword!;

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
                              controller: SignUpScreen.txtfirstname,
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
                              controller: SignUpScreen.txtlastname,
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
                              controller: SignUpScreen.txtphone,
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Email";
                                }
                              },
                              controller: SignUpScreen.txtemail,
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
                                if (value != SignUpScreen.txtrepassword.text) {
                                  return " Password does not match";
                                }
                              },
                              controller: SignUpScreen.txtpassword,
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
                                if (value != SignUpScreen.txtpassword.text) {
                                  return " Password does not match";
                                }
                              },
                              controller: SignUpScreen.txtrepassword,
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
                                    MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child:  ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: Color(0xffdee1e6),
                                      elevation: 10,
                                      backgroundColor: Color(0xfffa7914),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50))),
                                  onPressed: () async{
                                    if (_formKey.currentState!.validate()) {
                                      if (ischecked == false) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                duration: Duration(seconds: 2),
                                                content: Text(
                                                    "Please Accept Term And condition")));
                                      } else {
                                        if(widget.index == null)
                                          {

                                            StoreData();
                                            Navigator.pushReplacementNamed(
                                              context, "sigin",
                                              // arguments: dataList
                                            );

                                            // var Firstnameread = await FirstName();
                                            // var Lastnameread = await Lastname();
                                            // var Phoneread = await Phone();
                                            // var Emailread = await Email();
                                            // var Passwordread = await Password();
                                            // var Repasswrodread = await RePassword();


                                            // dataList.add(userDetails(
                                            //   firstname: "${Firstnameread}",
                                            //   lastname: "${Lastnameread}",
                                            //   phone: "${Phoneread}",
                                            //   email: "${Emailread}",
                                            //   password: "${Passwordread}",
                                            //   rePassword: "${Repasswrodread}",
                                            // ));

                                          }
                                       else
                                         {
                                         dataList[widget.index!].firstname = SignUpScreen.txtfirstname.text;
                                         dataList[widget.index!].lastname = SignUpScreen.txtlastname.text;
                                         dataList[widget.index!].phone = SignUpScreen.txtphone.text;
                                         dataList[widget.index!].email = SignUpScreen.txtemail.text;
                                         dataList[widget.index!].password = SignUpScreen.txtpassword.text;
                                         dataList[widget.index!].rePassword = SignUpScreen.txtrepassword.text;

                                         Navigator.pushReplacementNamed(
                                             context, "nonprofit",
                                             arguments: dataList);

                                         }


                                      }
                                    }
                                  },
                                  child: widget.index==null ? Text("Sign Up"):Text("Update"),
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
