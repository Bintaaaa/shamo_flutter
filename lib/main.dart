import 'package:flutter/material.dart';
import 'package:shamo_flutter/page/sign_in_page.dart';
import 'package:shamo_flutter/page/sign_up_page.dart';
import 'package:shamo_flutter/page/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) =>  SplashScreenPage(),
        '/sign-in': (context) =>  SignInPage(),
        '/sign-up': (context) => SignUpPage(),
      },
    );
  }
}
