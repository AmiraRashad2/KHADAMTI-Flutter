import 'package:flutter/material.dart';
import 'package:untitled23/About%20US.dart';
import 'package:untitled23/Change%20Email.dart';
import 'package:untitled23/Change%20Pass.dart';
import 'package:untitled23/IN%20NavBar.dart';
import 'package:untitled23/Login%20Screen.dart';
import 'package:untitled23/SignUP.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}