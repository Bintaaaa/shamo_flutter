import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
import 'package:shamo_flutter/theme/text_style.dart';

class ItemButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const ItemButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(top: defaultMargin),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          title,
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
