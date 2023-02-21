import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  bool ischecked = false;


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
                Padding(
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
                          padding: const EdgeInsets.only(top: 50,left: 25, right: 25),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              prefixIconColor: Color(0xff7d7f86),
                              hintText: "Your email  address",
                              hintStyle: TextStyle(color: Color(0xff7d7f86)),

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
                              prefixIcon: Icon(Icons.key),
                              prefixIconColor: Color(0xff7d7f86),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Color(0xff7d7f86)),
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
                          const EdgeInsets.only(left: 15, right: 20, top: 25),
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
                              Text("Remember me",style: TextStyle(color: Color(0xff7d7f86)),)
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
                                    Navigator.pushReplacementNamed(context, "otp");
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(fontSize: 16),
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,right:25),
                          child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                            TextButton(onPressed: (){}, child: Row(
                              children: [
                                Icon(Icons.lock_outline,color: Color(0xfffa7914),size: 15,),
                                SizedBox(width: 5,),
                                Text("Forgot Password?",style: TextStyle(color: Color(0xfffa7914)),),
                              ],
                            ))
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text("Don't have an account?",style: TextStyle(color: Color(0xff7d7f86)),),
                        ),Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: TextButton(child: Text("Sign Up",style: TextStyle(color: Color(0xfffa7914)),),onPressed: (){
                            Navigator.pushNamed(context, "signup");
                          },),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
