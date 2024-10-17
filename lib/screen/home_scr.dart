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
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image(image: AssetImage('assets/popular2.png')),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AssassinS',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 15),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 20), // Padding for button
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(
                                          255, 253, 1, 3), // Button color
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.play_circle_outlined,
                                            color: Colors.white),
                                        SizedBox(width: 15),
                                        Text(
                                          'Play',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                        Column(
                          children: [
                            Image.asset('assets/tv1.jpg',
                                width: 100, height: 100),
                            Text(
                              'Tv Darama',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/tv2.jpg',
                                width: 100, height: 100),
                            Text(
                              'Tv Darama',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/tv3.jpg',
                                width: 100, height: 100),
                            Text(
                              'Tv Darama',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: const Color.fromARGB(186, 158, 158, 158),
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
                  Column(
                    children: [
                      Image.asset('assets/up1.jpg', width: 100, height: 100),
                      Text(
                        'Up Coming',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/up2.jpg', width: 100, height: 100),
                      Text(
                        'Up Coming',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/up3.jpg', width: 100, height: 100),
                      Text(
                        'Up Coming',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
