import 'package:flutter/material.dart';

import 'package:boardima_lk/forgot_password/forgot.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'forgot',
    routes: {'forgot': (context)=>MyLogin()},
  )

  );
}


