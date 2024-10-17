import 'package:flutter/material.dart';
import 'package:net_flix_move/screen/home_scr.dart';
import 'package:net_flix_move/screen/search_scr.dart';
import 'package:net_flix_move/welcom_page/login_pge.dart';
import 'package:net_flix_move/welcom_page/navigat_pge.dart';
import 'package:net_flix_move/welcom_page/signup_page.dart';
import 'package:net_flix_move/welcom_page/spleshing.dart';

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
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Navigation_scr(),
    );
  }
}
