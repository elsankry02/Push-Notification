import 'package:flutter/material.dart';

class PushNotification extends StatelessWidget {
  const PushNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Text('Flutter Notification'),
        ),
      ),
    );
  }
}
