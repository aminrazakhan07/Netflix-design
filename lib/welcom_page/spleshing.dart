import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 5), () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context) => Navigation_scr()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/netflix_logo.png'), // Netflix Logo
            ),
            SizedBox(height: 50),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Bobbers',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('NetFlix',
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Benton Sans',
                        fontSize: 45,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
