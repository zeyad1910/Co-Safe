import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  Background({@required this.child});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background_design.png'),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/white_path.png',
              width: size.width,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
