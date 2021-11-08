import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
import 'package:shamo_flutter/theme/text_style.dart';

class ItemPopular extends StatelessWidget {
  final String url;
  final String title;
  final String category;
  final String price;
  const ItemPopular({Key? key, required this.url, required this.title, required this.category, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        left: defaultMargin,
        bottom: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/$url",
            height: 155,
            width: 215,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 8
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    "\$$price",
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
