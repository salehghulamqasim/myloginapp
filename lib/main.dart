import 'package:flutter/material.dart';
import 'package:myloginapp/pages/login.dart';
import 'package:myloginapp/pages/signup.dart';
import 'package:myloginapp/pages/welcome.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(

      routes: {
        "/": (context) => Welcome(),
        "/login": (context) => Login(),
        "/signup": (context) => SignUp (),

      },
    );
  }
}
