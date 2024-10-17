// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstTExt()),
                  );
                },
                child: Text('First Text'),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => SecondTExt()),
                  );
                },
                child: Text('Second Text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstTExt extends StatelessWidget {
  const FirstTExt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Text('Second Text'),
            ),
          ],
        ),
      ),
    );
  }
}

//////
class SecondTExt extends StatelessWidget {
  const SecondTExt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Text('Second Text'),
            ),
          ],
        ),
      ),
    );
  }
}
