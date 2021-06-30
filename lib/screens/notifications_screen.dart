import 'package:co_safe/utilities/constants.dart';
import 'package:co_safe/widgets/background.dart';
import 'package:co_safe/widgets/silde_menu_drawer.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  static const String id = '/notifications';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SlideMenuDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
          style: TextStyle(
              fontSize: size.height * 0.035, fontWeight: FontWeight.w800),
        ),
        backgroundColor: kMainAppColor,
      ),
      body: Background(
        child: Text(''),
        pathImage: Image.asset(
          'assets/images/white_wave.png',
          width: size.width,
        ),
      ),
    );
  }
}
