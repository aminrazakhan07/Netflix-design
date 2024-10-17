// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TvSerien extends StatefulWidget {
  const TvSerien({super.key});

  @override
  State<TvSerien> createState() => _TvSerienState();
}

class _TvSerienState extends State<TvSerien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('TV Screen'),
      ),
    );
  }
}
