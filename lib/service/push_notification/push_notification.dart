import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static Future init() async {
    await messaging.requestPermission();
    await messaging.getToken().then((value) {
      getToken(value!);
      log(value);
    });

    FirebaseMessaging.onBackgroundMessage(onBackgroundMessageHandler);
  }

  static getToken(String token) {}

  static Future<void> onBackgroundMessageHandler(
    RemoteMessage remoteMessage,
  ) async {
    Firebase.initializeApp();
    log(remoteMessage.notification?.title ?? 'NO Title');
  }
}
