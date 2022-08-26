import 'package:flutter/material.dart';
import 'package:ui_task/const/colors_const.dart';
import 'package:ui_task/ui/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Lato',
        errorColor: otpTextColor,
        appBarTheme: const AppBarTheme(
          color: white,
          iconTheme: IconThemeData(color: black),
        ),
        textTheme: TextTheme(
          headline1: const TextStyle(
            fontSize: 40.0,
            fontFamily: 'Lato',
            color: black,
            fontWeight: FontWeight.bold,
          ),
          headline2: const TextStyle(
            fontSize: 30.0,
            fontFamily: 'Lato',
            color: black,
            fontWeight: FontWeight.bold,
          ),
          headline3: const TextStyle(
            fontSize: 24.0,
            fontFamily: 'Lato',
            color: black,
            fontWeight: FontWeight.bold,
          ),
          headline4: const TextStyle(
            fontSize: 18.0,
            fontFamily: 'Lato',
            color: black,
            fontWeight: FontWeight.bold,
          ),
          headline5: const TextStyle(
            fontSize: 16.0,
            fontFamily: 'Lato',
            color: black,
          ),
          headline6: const TextStyle(
            fontSize: 12.0,
            fontFamily: 'Lato',
            color: black,
          ),
          bodyText1: const TextStyle(
            fontSize: 16.0,
            fontFamily: 'CabinetGrotesk',
            color: black,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: const TextStyle(
            fontSize: 12.0,
            fontFamily: 'Lato',
            color: black,
          ),
          caption: const TextStyle(
            color: black,
            fontFamily: 'Lato',
            fontSize: 10.0,
            decoration: TextDecoration.underline,
          ),
          subtitle1: TextStyle(
            color: black.withOpacity(0.5),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
          subtitle2: TextStyle(
            color: black.withOpacity(0.5),
            fontSize: 12.0,
            fontFamily: 'Lato',
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
