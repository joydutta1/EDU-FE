import '/home.dart';
import '/profile.dart';
import '/signup.dart';

import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 102, 0, 30)),
    initialRoute: 'login',
    debugShowCheckedModeBanner: false,
    routes: {'login':(context) => MyLogin()},
    //routes: {'signup':(context) => MySignup()},
    //routes: {'home':(context) => MyProfile()},)
  )
  );
}

