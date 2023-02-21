import 'package:flutter/material.dart';
import 'package:geeve/screens/Splash_screen.dart';
import 'package:geeve/screens/non_profit_screen.dart';
import 'package:geeve/screens/otp_verification_screen.dart';
import 'package:geeve/screens/registration_screen.dart';
import 'package:geeve/screens/signin_screen.dart';
import 'package:geeve/screens/signup_screen.dart';


void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "signup",

      routes: {
        '/':(context) => RegistrationScreen(),
        'sigin':(context) => SignInScreen(),
        'signup':(context) => SignUpScreen(),
        'nonprofit':(context) => NonprofitScreen(),
        'otp':(context) => OtpVerificationScreen(),
        'splash':(context) => SplashScreen(),
      },
    ),
  );
}