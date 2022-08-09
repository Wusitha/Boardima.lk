import 'package:flutter/material.dart';

import 'package:boardima_lk/sign_up/sign_up.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'sign_up',
    routes: {'sign_up': (context)=>MyLogin()},
  )

  );
}


