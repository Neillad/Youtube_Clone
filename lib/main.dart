import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_clone/screens/home_screen.dart';
import 'package:youtube_clone/screens/nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Flutter Youtube UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          bottomNavigationBarTheme:
              BottomNavigationBarThemeData(selectedItemColor: Colors.white)),
      home: NavScreen(),
    );
  }
}
