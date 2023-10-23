import 'package:flutter/material.dart';




class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272239),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff272239),
        title: Text('Notification'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff2d2942),
                    Colors.deepPurple,
                  ],
                ),
              ),
             // color: Colors.red,
              height: 40,
              width: 200,
              child: Center(child: Text('No new notifications',
              style: TextStyle(color: Colors.grey),)),
            ),
          ),
        ],
      ),
    );
  }
}
