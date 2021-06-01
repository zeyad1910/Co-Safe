import 'package:co_safe/utilities/constants.dart';
import 'package:flutter/material.dart';

class SignUpTextField extends StatelessWidget {
  final String label;
  final Widget child;
  SignUpTextField({this.label, this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.14,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: size.height * 0.023,
                  fontWeight: FontWeight.w500,
                  color: kLightBlack),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: child,
          ),
        ],
      ),
    );
  }
}
