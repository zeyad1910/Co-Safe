import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationManager {
  late final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  int _id = 0;
  LocalNotificationManager() {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  }
  Future<void> initNotification(BuildContext context) async {
    AndroidInitializationSettings androidInitSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    InitializationSettings initSettings =
        InitializationSettings(android: androidInitSettings);
    await _flutterLocalNotificationsPlugin.initialize(
      initSettings,
    );
  }
  //
  // Future selectNotification(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute<void>(builder: (context) => ),
  //   );
  // }

  Future<void> showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'channel id',
      'channel name',
      'channel description',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
    );
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin.show(
      _id,
      'Co-Safe',
      'there is an infected person around you',
      platformChannelSpecifics,
    );
    _id++;
  }
}
