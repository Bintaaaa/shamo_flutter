import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
import 'package:shamo_flutter/theme/text_style.dart';

class ItemTextFormField extends StatelessWidget {

  final String title;
  final String iconUrl;
  final String hintText;
  final bool obscureText;
  const ItemTextFormField({Key? key, required this.title, required this.iconUrl, required this.hintText, this.obscureText = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style:
            primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Image.asset(
                  "assets/$iconUrl.png",
                  width: 17,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextFormField(
                    style: primaryTextStyle,
                    obscureText: obscureText ,
                    decoration: InputDecoration.collapsed(
                        hintText: hintText,
                        hintStyle: subtitleTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
