
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:note_via/ui/sign_up/sign_up.dart';
import 'package:note_via/ui/login/login_page.dart';
import 'package:note_via/ui/forgot_password/forgot_password.dart';
import 'package:note_via/ui/landing_page_web/homePage.dart';
import 'package:note_via/ui/emailVerification/email.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: "/homepage",
  routes: {
    "/signup":(context)=>SignUpPage(),
    "/login":(context)=>LoginPage(),
    "/forgotpassword":(context)=>ForgotPasswordPage(),
    "/homepage":(context)=>HomePage(),
    "/emailverification":(context)=>EmailVerifiedPage(),
  },
));
