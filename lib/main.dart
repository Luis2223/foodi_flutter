import 'package:flutter/material.dart';
import 'package:foodi_flutter/Screens/Home/home_screen.dart';
import 'package:foodi_flutter/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: const TextTheme(
              headline1:
                  TextStyle(color: kTextColor, fontWeight: FontWeight.bold))),
      home: const HomeScreen(title: 'Foodi'),
    );
  }
}
