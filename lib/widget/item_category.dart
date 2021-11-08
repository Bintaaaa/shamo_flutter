import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
import 'package:shamo_flutter/theme/text_style.dart';

class ItemCategory extends StatelessWidget {
  final String title;
  final bool isChoose;
  const ItemCategory({Key? key, required this.title, this.isChoose = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isChoose ? primaryColor : transparent,
        border: Border.all(
          color: isChoose ? transparent : subtitleTextColor
        )
      ),
      child: Text(
        title,
        style: primaryTextStyle.copyWith(
          fontSize: 13,
          fontWeight: medium,
        ),
      ),
    );
  }
}
