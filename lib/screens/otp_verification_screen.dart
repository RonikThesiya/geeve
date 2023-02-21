import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30))),
        backgroundColor: Color(0xfffa7914),
        title: Text("Verification",style: TextStyle(fontSize: 25),),
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


          SingleChildScrollView(
            child: Column(
              children: [
                Center(child: Image.asset("assets/verification.png",height: MediaQuery.of(context).size.height * 0.25,width: MediaQuery.of(context).size.width * 0.6,)),
                Text("We have sent you SMS with a code to the number below",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                Text("+1 235 564 5847",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text("To complete your phone number verification,",style: TextStyle(fontSize: 10,color: Color(0xff7d7f86)),),
                Text("Please enter 6-digit activation code.",style: TextStyle(fontSize: 10,color: Color(0xff7d7f86)),),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width:  MediaQuery.of(context).size.width,
                  child: OtpTextField(
                    numberOfFields: 6,
                    margin: EdgeInsets.all(5),
                    filled: true,
                    fillColor: Color(0xffeaeaea),
                    // showFieldAsBox: true,
                    fieldWidth: 45,
                     cursorColor: Color(0xfffa7914),
                    focusedBorderColor: Color(0xfffa7914),


                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
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

                            showDialog(
                                barrierColor: Colors.black87,context: context, builder: (context){
                              return AlertDialog(
                                elevation: 500,
                                content: SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.4,
                                  width: MediaQuery.of(context).size.height * 0.3,

                                    child: Column(
                                      children: [
                                        Image.asset("assets/success.png",height: MediaQuery.of(context).size.height * 0.16,width: MediaQuery.of(context).size.width * 0.4,),
                                        Text("Congratulation",style: TextStyle(color: Color(0xfffa7914)),),
                                        SizedBox(height: 20,),
                                        Text("Now you are registered",style: TextStyle(fontSize: 20),),
                                        SizedBox(height: 18,),
                                        Text("Get ready with geeve",style: TextStyle(color: Color(0xff7d7f86),fontSize: 14),),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 30),
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height * 0.06,
                                            width: MediaQuery.of(context).size.width * 0.9,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                                                    backgroundColor: MaterialStateProperty.all(
                                                        Color(0xfffa7914))),
                                                onPressed: () {
                                                  Navigator.pushReplacementNamed(context, "nonprofit");
                                                },
                                                child: Text(
                                                  "Start Now",
                                                  style: TextStyle(fontSize: 16),
                                                )),
                                          ),
                                        ),

                                      ],
                                    )));

                              });

                          },


                          child: Text(
                            "Verify",
                            style: TextStyle(fontSize: 16),
                          ))),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text("Resend code in 0:30",style: TextStyle(color: Color(0xfffa7914)),),
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

