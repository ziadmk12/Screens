import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:flutter_application_1/auth/signup.dart';
import 'package:flutter_application_1/screens/screen1.dart';
import 'package:flutter_application_1/fruits%20store/screen2.dart';
import 'package:flutter_application_1/screens/screen3.dart';
import 'package:flutter_application_1/screens/screen4.dart';
import 'package:flutter_application_1/screens/screen5.dart';
import 'Booking BookApp/HomePage.dart';
import 'Booking BookApp/books.dart';
import 'Booking BookApp/detailsBook.dart';
import 'Booking BookApp/login.dart';
import 'Booking BookApp/signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Screen2(),
      routes: {               
        //"signup":(context) => Signup(),
        "screen1":(context) => Screen1(),
        "screen2":(context) => Screen2(),
        "screen3":(context) => Screen3(),
        "screen4":(context) => Screen4(),
        "screen5":(context) => screen5(),
        "loginbook":(context) => LoginBook(),
        "signupBook":(context) => SignupBK(),
        "Homepage":(context) => Homepage(),
        "books":(context) => books(),
        "detailsbook":(context) => detailsBook(),      
      },
    );
  }
}


