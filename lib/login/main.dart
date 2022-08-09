import 'package:flutter/material.dart';

import 'sign_in.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'sign_in',
    routes: {'sign_in': (context)=>MyLogin()},
  )

  );
}


