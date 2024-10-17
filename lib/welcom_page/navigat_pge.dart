// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:net_flix_move/screen/home_scr.dart';
import 'package:net_flix_move/screen/probrance.dart';
import 'package:net_flix_move/screen/search_scr.dart';
import 'package:net_flix_move/screen/wicefe.dart';
import 'package:net_flix_move/screen/wkiratche_scr.dart';

class Navigation_scr extends StatefulWidget {
  const Navigation_scr({super.key});

  @override
  _Navigation_scrState createState() => _Navigation_scrState();
}

class _Navigation_scrState extends State<Navigation_scr> {
  int _currentPage = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    Wkratce(),
    PobranePliki(),
    Wiecej(),
    // Settings_scr(),
    // PaymentDetails_scr(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage], ///// Display the selected page
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(179, 195, 196, 195),
              spreadRadius: 0.1,
              blurRadius: 4,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.zero,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentPage,
            onTap: _onNavBarTapped,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'Strona gtowna',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.search_sharp),
                label: 'Szukaj',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home_max),
                label: 'Wkrotce',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.download_rounded),
                label: 'Pobrane pliki',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.menu_outlined),
                label: 'Wiecej',
              ),
            ],
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.red,
          ),
        ),
      ),
    );
  }
}

///////////////////


