import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:push_notification/app.dart';
import 'package:push_notification/firebase_options.dart';
import 'package:push_notification/service/push_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  PushNotificationService.init();
  runApp(const PushNotification());
}
