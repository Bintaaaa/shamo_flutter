import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo_flutter/page/sign_in_page.dart';
import 'package:shamo_flutter/theme/color.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 2),() => Navigator.pushReplacementNamed(context, "/sign-in"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: Image.asset("assets/image_splash.png"),
        ),
      ),
    );
  }
}
