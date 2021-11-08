import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
import 'package:shamo_flutter/theme/text_style.dart';
import 'package:shamo_flutter/widget/item_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hallo, Alex",
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "@alexkeinn",
                    style: subtitleTextStyle.copyWith(
                        fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image_profile.png"))),
            )
          ],
        ),
      );
    }

    Widget _category() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 16,
              ),
              ItemCategory(title: "All Shoes", isChoose: true),
              ItemCategory(title: "Running", isChoose: false),
              ItemCategory(title: "Basket Ball", isChoose: false),
              ItemCategory(title: "Training", isChoose: false),
              ItemCategory(title: "Hiking", isChoose: false),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: Column(
          children: [
            _header(),
            _category(),
          ],
        ),
      ),
    );
  }
}
