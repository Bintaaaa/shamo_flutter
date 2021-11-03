import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
import 'package:shamo_flutter/theme/text_style.dart';
import 'package:shamo_flutter/widget/item_button.dart';
import 'package:shamo_flutter/widget/item_text_form_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Container(
        margin: EdgeInsets.only(top: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style:
                  primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
            Text(
              "Sign In to Continue",
              style:
                  subtitleTextStyle.copyWith(fontSize: 16, fontWeight: light),
            )
          ],
        ),
      );
    }

    Widget _textField() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            ItemTextFormField(
                title: "Email",
                iconUrl: "icon_email",
                hintText: "Your Email Address"),
            ItemTextFormField(
              title: "Password",
              iconUrl: "icon_password",
              hintText: "Your Password",
              obscureText: true,
            ),
          ],
        ),
      );
    }

    Widget _button() {
      return ItemButton(title: "Sign In", onPressed: () {});
    }

    Widget _footer() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don\'t have an account? ",
              style: subtitleTextStyle.copyWith(fontSize: 12),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(

                //how to enable splash color textButton
                overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent)
              ),
              child: Text(
                "Sign Up",
                style:
                    purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_header(), _textField(), _button(), Spacer(), _footer()],
          ),
        ),
      ),
    );
  }
}
