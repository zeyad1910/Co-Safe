import 'package:co_safe/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'textfield_container.dart';

class InputText extends StatelessWidget {
  final double? width;
  final String? hintText;
  final Widget? icon;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  const InputText({
    this.obscureText = false,
    this.width,
    this.hintText,
    this.icon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      width: width,
      child: TextField(
        textAlign: TextAlign.start,
        obscureText: obscureText,
        onChanged: onChanged,
        cursorColor: kMainAppColor,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
