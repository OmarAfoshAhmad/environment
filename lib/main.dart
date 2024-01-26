import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/Core/FirbaseMessagingController.dart';
import 'package:test_flutter/Core/GeneralController.dart';
import 'package:test_flutter/Core/ThemeClass.dart';
import 'package:test_flutter/firebase_options.dart';
import 'package:test_flutter/views/home.dart';

FirebaseMessagingController messagingController = FirebaseMessagingController();
// Background For Notifications
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print("background==============");
    if (message.notification != null) {
      print(message.notification!.title);
    } else {
      print("Notification is null");
    }
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Background For Notifications
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // Permssion For Notifications
  messagingController.requestPermission();
//  Foreground For Notifications
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (message.notification != null) {
      if (kDebugMode) {
        print("Foreground==============");
        print(message.notification!.title);
      }
    }
  });

  // For Check User Auth
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
// ------------------------

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    GeneralController controller = Get.put(GeneralController());
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Get.deviceLocale,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        home: const Home());
  }
}
