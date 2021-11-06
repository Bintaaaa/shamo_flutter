import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Text("Tess1"),
      ),
    );
  }
}
