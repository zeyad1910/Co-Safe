import 'package:co_safe/utilities/constants.dart';
import 'package:co_safe/widgets/textfield_container.dart';
import 'package:flutter/material.dart';

class PasswordInputText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  final bool obscureText;

  PasswordInputText({
    this.icon,
    this.hintText,
    this.onChanged,
    this.obscureText = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        onChanged: onChanged,
        cursorColor: kMainAppColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kMainAppColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
