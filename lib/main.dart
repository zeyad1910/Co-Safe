import 'package:co_safe/screens/login.dart';
import 'package:co_safe/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() => runApp(CoSafe());

class CoSafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoarding.id,
      routes: {
        OnBoarding.id: (context) => OnBoarding(),
        Login.id: (context) => Login(),
      },
    );
  }
}
