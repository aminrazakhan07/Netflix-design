// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:net_flix_move/widgets/button_widget.dart';
import 'package:net_flix_move/widgets/card_widget.dart';

// class SearchScreen extends StatelessWidget {

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int? _selectedButtonIndex;
  final List<String> hote_Screen = [
    'Tv Series',
    'Movies',
    'Upcoming',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/nimon.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text('Trending',
                                    style: TextStyle(color: Colors.white)),
                              ),
                              SizedBox(width: 10),
                              DropdownButton<String>(
                                items: <String>[
                                  'Option 1',
                                  'Option 2',
                                  'Option 3',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                                hint: Text('Daily',
                                    style: TextStyle(color: Colors.white)),
                                dropdownColor: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        color: const Color.fromARGB(146, 27, 22, 22),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5), // Padding added
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                            SizedBox(width: 5),
                            Text('7.5', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.amber,
                        ),
                        suffixIcon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.amber,
                        ),
                        hintText: 'Search...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    /////////////
                    CategoryButtons(
                      categories: hote_Screen,
                      selectedButtonIndex: _selectedButtonIndex,
                      onButtonTap: (index) {
                        setState(() {
                          _selectedButtonIndex = index;
                        });
                      },
                    ),

                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Popular Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                    //////// Card Container
                    SizedBox(height: 20),
                    /////////
                    Column(
                      children: [
                        /////// 1 card
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PopularCard(
                              imagePath: 'assets/popular1.jpg',
                              date: '22-10-2024',
                              rating: '7.5',
                            ),

                            /////// 2 card

                            SizedBox(width: 20),
                            PopularCard(
                              imagePath: 'assets/popular2.png',
                              date: '22-10-2024',
                              rating: '7.5',
                            ),
                          ],
                        ),
                        /////// 3 card

                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PopularCard(
                              imagePath: 'assets/popular3.jpg',
                              date: '22-10-2024',
                              rating: '7.5',
                            ),
                            /////// 4 card

                            SizedBox(width: 20),
                            PopularCard(
                              imagePath: 'assets/popular4.jpg',
                              date: '22-10-2024',
                              rating: '7.5',
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
