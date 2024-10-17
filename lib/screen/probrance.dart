// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PobranePliki extends StatefulWidget {
  const PobranePliki({super.key});

  @override
  State<PobranePliki> createState() => _ProbranceState();
}

class _ProbranceState extends State<PobranePliki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Pobrane Pliki'),
      ),
    );
  }
}
