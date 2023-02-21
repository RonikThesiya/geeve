import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cupertino_icons/cupertino_icons.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  BoxDecoration b1 = BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Color(0xfff4ede9),
          offset: Offset(0, 10),
          blurRadius: 10)
    ],
    color: Colors.white,
    shape: BoxShape.circle,
  );

 BoxDecoration b2 =  BoxDecoration(
   border: Border.all(
       width: 8, color: Color(0xfffa7914)),
   color: Colors.white,
   shape: BoxShape.circle,
 );


  Color c1 = Color(0xfffa7914);
  Color c2 = Color(0xff7d7f86);
  Color c3 = Color(0xff7d7f86);
  Color c4 = Color(0xff7d7f86);
  Color c5 = Color(0xff7d7f86);
  Color c6 = Color(0xff7d7f86);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30))),
          backgroundColor: Color(0xfffa7914),
          title: Text("Registration"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/background.png"),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I am a"),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            // if (deco == true) {
                            //   deco2 = !deco2;
                            // }

                            b1 = BoxDecoration(
                              border: Border.all(
                                  width: 8, color: Color(0xfffa7914)),
                              color: Colors.white,
                              shape: BoxShape.circle,
                            );

                            b2 = BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xfff4ede9),
                                              offset: Offset(0, 10),
                                              blurRadius: 10)
                                        ],
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      );

                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.4,
                           decoration: b1,
                          alignment: Alignment.center,
                          child: Text("Donor",
                              style: TextStyle(
                                color: Color(0xfffa7914),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            // if (deco2 == false) {
                            //   deco = !deco;
                            // }
                            b1 =   BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xfff4ede9),
                                              offset: Offset(0, 10),
                                              blurRadius: 10)
                                        ],
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      );
                            b2 =   BoxDecoration(
                              border: Border.all(
                                  width: 8, color: Color(0xfffa7914)),
                              color: Colors.white,
                              shape: BoxShape.circle,
                            );

                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: b2,
                          alignment: Alignment.center,
                          child: Text("Donee",
                              style: TextStyle(
                                color: Color(0xfffa7914),
                              )),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, "signup");
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color(0xfffa7914),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text("Go",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
