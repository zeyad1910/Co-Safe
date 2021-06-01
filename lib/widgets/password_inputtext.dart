import 'package:co_safe/utilities/constants.dart';
import 'package:co_safe/widgets/input_text.dart';
import 'package:flutter/material.dart';

class PasswordInputText extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final Widget icon;
  final double width;
  PasswordInputText(
      {this.obscureText = true, this.hintText, this.icon, this.width});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        InputText(
          width: width,
          icon: icon,
          obscureText: obscureText,
          hintText: hintText,
        ),
        Positioned(
          right: size.width * 0.05,
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.remove_red_eye,
              color: kMainAppColor,
            ),
          ),
        ),
      ],
    );
  }
}
