import 'package:flutter/material.dart';
import 'package:shamoshoes/pages/sign_in_page.dart';
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
      },
    );
  }
}