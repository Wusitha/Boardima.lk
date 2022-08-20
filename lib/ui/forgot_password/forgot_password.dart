import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:note_via/ui/forgot_password/forgot_password_left_side.dart';
import 'package:note_via/ui/forgot_password/forgot_password_right_side.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F1F),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 640,
            width: 1080,
            margin: EdgeInsets.symmetric(horizontal: 24),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.black,
              boxShadow: [
                const BoxShadow(
                  color: Color(0x57AAAAAA),
                  blurRadius: 5,
                  spreadRadius: 3,
                  offset: Offset(0.0, 2.0),
                  // shadow direction: bottom right
                )
              ],
            ),
            child: Row(
              children: [
                const LoginPageLeftSide(),
                if (MediaQuery.of(context).size.width > 900)
                  const LoginPageRightSide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
