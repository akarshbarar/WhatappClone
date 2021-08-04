import 'package:flutter/material.dart';
import 'package:whatsapp/CurrentUserSettings.dart';
import 'package:whatsapp/HomePage.dart';
import 'package:whatsapp/UTILS/AppColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.tealGreenDark,
          accentColor: AppColors.lightGreenDark),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/setting': (context) => CurrentUserSettings()
      },
    );
  }
}
