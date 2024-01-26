import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeClass {
  static Color lightPrimaryColor = HexColor('#FF0000');
  static Color darkPrimaryColor = HexColor('#FFFFFF');
  static Color secondaryColor = HexColor('#FF8B6A');
  static Color darkSecondaryColor = HexColor('#FF0000');
  static Color accentColor = HexColor('#FFD2BB');
  static Color scaffoldBackgroundColor = HexColor('#FF0000');
  static const Color textColorLight = Color(0xFFFFFFFF);
  static const Color textColorDark = Color(0xFF000000);

  // static Color textColorLight = HexColor('#FFFFFF');
  // static Color textColorDark = HexColor('#000000');
  static ThemeData lightTheme = ThemeData(
    primaryColor: scaffoldBackgroundColor,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: textColorLight,
      ),
    ),
    colorScheme: const ColorScheme.light()
        .copyWith(primary: lightPrimaryColor, secondary: secondaryColor),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: scaffoldBackgroundColor,
    colorScheme: ColorScheme.dark()
        .copyWith(primary: darkPrimaryColor, secondary: darkSecondaryColor),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: textColorDark,
      ),
    ),
  );
}




//  brightness: Brightness.light,
//           primaryColor: Colors.green,
//           hintColor: Colors.green,
//           colorScheme:
//               ColorScheme.fromSwatch().copyWith(secondary: Colors.green[300]),
//           scaffoldBackgroundColor: Colors.white,
//           cardColor: Colors.green,
//           dividerColor: Colors.black,
//           textTheme: const TextTheme(
//             headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
//             headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
//             bodyText1: TextStyle(fontSize: 16.0),
//             bodyText2: TextStyle(fontSize: 14.0),
//           ),
//           appBarTheme: const AppBarTheme(
//             backgroundColor: Colors.orange,
//             foregroundColor: Colors.white,
//             titleTextStyle:
//                 TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//           ),
//           buttonTheme: ButtonThemeData(
//             buttonColor: Colors.orange,
//             textTheme: ButtonTextTheme.primary,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//           ),
//           inputDecorationTheme: InputDecorationTheme(
//             filled: true,
//             fillColor: Colors.grey[200],
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10.0),
//               borderSide: BorderSide.none,
//             ),
//           ),
//           tooltipTheme: TooltipThemeData(
//             decoration: BoxDecoration(
//               color: Colors.black87,
//               borderRadius: BorderRadius.circular(5.0),
//             ),
//             textStyle: TextStyle(color: Colors.white),
//           ),