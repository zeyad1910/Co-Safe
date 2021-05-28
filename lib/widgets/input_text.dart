import 'package:co_safe/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'textfield_container.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputText({
    this.hintText,
    this.icon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
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
