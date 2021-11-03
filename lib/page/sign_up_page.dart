import 'package:flutter/material.dart';
import 'package:shamo_flutter/theme/color.dart';
import 'package:shamo_flutter/theme/text_style.dart';
import 'package:shamo_flutter/widget/item_button.dart';
import 'package:shamo_flutter/widget/item_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Container(
        margin: EdgeInsets.only(top: 10,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            Text(
              "Register and Happy Shopping",
              style:
                  subtitleTextStyle.copyWith(fontSize: 16, fontWeight: light),
            )
          ],
        ),
      );
    }

    Widget _textFormField() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          children: const [
            ItemTextFormField(
                title: "Full Name",
                iconUrl: "icon_name",
                hintText: "Your Full Name"),
            ItemTextFormField(
                title: "Username",
                iconUrl: "icon_username",
                hintText: "Your Username"),
            ItemTextFormField(
                title: "Email Address",
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

    Widget _buttonSignUp(){
      return ItemButton(title: "Sign Up", onPressed: (){});
    }

    Widget _footer() {
      return Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: subtitleTextStyle.copyWith(fontSize: 12),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              style: ButtonStyle(

                //how to enable splash color textButton
                  overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent)
              ),
              child: Text(
                "Sign In",
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
        child: Container(
          margin: EdgeInsets.all(defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_header(), _textFormField(), _buttonSignUp(),Spacer(),_footer()],
          ),
        ),
      ),
    );
  }
}
