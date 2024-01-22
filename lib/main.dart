import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/Core/themController.dart';
import 'package:test_flutter/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ChangeTheme controller = Get.put(ChangeTheme());
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Get.deviceLocale,
        title: 'Flutter Demo',
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green,
          hintColor: Colors.green,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.green[300]),
          scaffoldBackgroundColor: Colors.white,
          cardColor: Colors.green,
          dividerColor: Colors.black,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
            bodyText1: TextStyle(fontSize: 16.0),
            bodyText2: TextStyle(fontSize: 14.0),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            titleTextStyle:
                TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.orange,
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
          tooltipTheme: TooltipThemeData(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(5.0),
            ),
            textStyle: TextStyle(color: Colors.white),
          ),
        ),
        home: const Home());
  }
}
