import 'package:flutter/material.dart';
import 'package:shamoshoes/pages/home/main_page.dart';
import 'package:shamoshoes/pages/sign_in_page.dart';
import 'package:shamoshoes/pages/sign_up_page.dart';
import 'package:shamoshoes/pages/splash_page.dart';
import 'package:shamoshoes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in':(context) => SignInPage(),
        '/sign-up':(context) => SignUpPage(),
        '/home':(context) => MainPage(),
      },
    );
  }
}