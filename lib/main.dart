import 'package:flutter/material.dart';
import 'package:flutter_demo_one/screens/Welcome/splash_screen.dart';
import 'package:flutter_demo_one/screens/main/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: Splash_Screen());
  }
}
