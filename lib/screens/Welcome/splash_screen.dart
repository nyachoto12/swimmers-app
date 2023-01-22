import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo_one/screens/Login/components/login.dart';
import 'package:flutter_demo_one/screens/Login/login_screen.dart';


import '../../constants.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            // Image.asset(
            //   'assets/images/swimmers.jpg',
            //   height: 100,
            //   width: 100,
            // ),
             Image.asset(
                    "assets/images/swim.png",
                    width: 146,
                  ),
                 const SizedBox(height: 10),
                  const Text("Swimmers Management App", 
                  style: TextStyle(color: kPrimaryColor, fontStyle: FontStyle.italic))
          ],
          
        ),
      ),
    );
  }
}
