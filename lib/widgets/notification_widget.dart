import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String date;
  final String title;
  final String body;
  String smallSentence(String bigSentence) {
    if (bigSentence.length > 10) {
      return bigSentence.substring(0, 10);
    } else {
      return bigSentence;
    }
  }

  NotificationWidget(
      {required this.date, required this.title, required this.body});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(size.height * 0.03),
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.01),
      decoration: BoxDecoration(
        gradient: new LinearGradient(
            stops: [0.02, 0.02], colors: [Color(0xFF54A1AC), Colors.white]),
        color: Color(0xFFF7F8FC),
        borderRadius: BorderRadius.circular(size.height * 0.02),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            smallSentence(date),
            style: TextStyle(color: Colors.red),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            title,
            style: TextStyle(color: Color(0xFF54A1AC)),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            body,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
