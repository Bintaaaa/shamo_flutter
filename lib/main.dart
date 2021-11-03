import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("halla", style: priceTextStyle.copyWith(
            fontSize: 30
          ),),
        ),
      ) ,
    );
  }
}
