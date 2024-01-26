import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FirebaseMessagingController {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  Future<void> requestPermission() async {
    NotificationSettings settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  sendNotefication(token, keyserver, title, message, data) async {
    var headersList = {
      'Accept': '*/*',
      'Content-Type': 'application/json',
      'Authorization':
          'key=AAAAHT-XfKM:APA91bFd9zezUdYo92uawKUJnEex3H-Ctir9ox6GN6FVPA0w2KUlpZx3RxNXCc3UDcpqJstmdcHcJwjsrjNHUq0c5iX4h1epiR0QdscgrkithN37EzMfVTxOOONokQWBaFiklHKDZl6j'
    };
    var url = Uri.parse('https://fcm.googleapis.com/fcm/send');

    var body = {
      "to": token,
      "notification": {
        "title": title,
        "body": message,
        "mutable_content": true,
        "sound": "Tri-tone"
      },
      'data': {
        'icon': const Icon(Icons.abc_sharp),
      }
    };

    var req = http.Request('POST', url);
    req.headers.addAll(headersList);
    req.body = json.encode(body);

    var res = await req.send();
    final resBody = await res.stream.bytesToString();

    if (res.statusCode >= 200 && res.statusCode < 300) {
      if (kDebugMode) {
        print(resBody);
      }
    } else {
      if (kDebugMode) {
        print(res.reasonPhrase);
      }
    }
  }
}
