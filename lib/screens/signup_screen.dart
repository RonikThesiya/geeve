import 'package:flutter/material.dart';
import 'package:geeve/screens/const.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ischecked = false;
  final _formKey = GlobalKey<FormState>();


  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();
  TextEditingController txtrepassword = TextEditingController();

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
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "First Name",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25, left: 25, right: 25),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Last Name",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25, left: 25, right: 25),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Phone",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25, left: 25, right: 25),
                            child: TextFormField(
                              validator: (value){
                                if(value == null || value.isEmpty)
                                  {
                                    return "Please Enter Email";
                                  }
                              },
                              controller: txtemail,
                              decoration: InputDecoration(
                                hintText: "Email",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25, left: 25, right: 25),
                            child: TextFormField(
                              validator: (value){
                                if(value == null || value.isEmpty)
                                {
                                  return "Please Enter Password";
                                }
                                if(value != txtrepassword.text)
                                {
                                  return " Password does not match";
                                }
                              },
                              controller: txtpassword,
                              decoration: InputDecoration(
                                hintText: "Password",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 25, left: 25, right: 25),
                            child: TextFormField(
                              validator: (value){
                                if(value == null || value.isEmpty)
                                {
                                  return "Please Re-Enter Password";

                                }
                                 if(value != txtpassword.text)
                                {
                                  return " Password does not match";
                                }
                              },
                              controller: txtrepassword,
                              decoration: InputDecoration(
                                hintText: "Re-enter Password",
                                filled: true,
                                fillColor: Color(0xfff6f6f6),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xfff6f6f6)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, right: 20, top: 20),
                            child: Row(
                              children: [
                                Transform.scale(
                                  scale: 1.5,
                                  child: Checkbox(
                                    checkColor: Colors.white,
                                      fillColor: MaterialStateProperty.all(Color(0xfffa7914)),

                                      shape:
                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                      value: ischecked,
                                      onChanged: (bool? valuee) {
                                        setState(() {
                                          ischecked = valuee!;
                                          print(valuee);
                                        });
                                      }),
                                ),
                                Text.rich(TextSpan(
                                    text: "I agree to the geeve ",style: TextStyle(fontSize: 10),
                                    children: [
                                      TextSpan(
                                          text: "Terms and Conditions",
                                          style:
                                              TextStyle(color: Color(0xfffa7914)))
                                    ]))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Color(0xffdee1e6),
                                        elevation: 10,
                                        backgroundColor: Color(0xfffa7914),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))

                                    ),

                                    onPressed: () {

                                      if(_formKey.currentState!.validate())
                                        {
                                          emailList.add(txtemail.text);
                                          passwordList.add(txtpassword.text);
                                          Navigator.pushReplacementNamed(context, "sigin",arguments: [emailList,passwordList]);




                                        }





                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(fontSize: 16),
                                    ))),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text("Already have an account?"),
                          ),Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: TextButton(child: Text("Sign In",style: TextStyle(color: Color(0xfffa7914)),),onPressed: (){
                              Navigator.pushNamed(context, "sigin");
                            },),
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
