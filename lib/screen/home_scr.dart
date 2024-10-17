// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:net_flix_move/widgets/button_widget.dart';

// class HomeScreen extends StatelessWidget {

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Column
              Column(
                children: [
                  Container(
                    child: Stack(
                      alignment:
                          Alignment.center, // Aligns children in the center
                      children: [
                        Image(image: AssetImage('assets/popular2.png')),
                        Align(
                          alignment:
                              Alignment.topLeft, // Aligns text to the top left
                          child: Padding(
                            padding:
                                const EdgeInsets.all(16.0), // Padding for text
                            child: Text(
                              'AssassinS',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment:
                              Alignment.center, // Aligns button to the center
                          child: IconButton(
                            icon: Icon(Icons.play_arrow,
                                size: 50, color: Colors.white),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Image 1 description',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Second Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TV Series',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/tv1.jpg', width: 100, height: 100),
                        Image.asset('assets/tv2.jpg', width: 100, height: 100),
                        Image.asset('assets/tv3.jpg', width: 100, height: 100),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Third Column (Similar to First)
              Text(
                'Upcoming',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/up1.jpg', width: 100, height: 100),
                  Image.asset('assets/up2.jpg', width: 100, height: 100),
                  Image.asset('assets/up3.jpg', width: 100, height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
