// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryButtons extends StatefulWidget {
  final List<String> categories;
  final int? selectedButtonIndex;
  final ValueChanged<int> onButtonTap;

  CategoryButtons({
    required this.categories,
    required this.selectedButtonIndex,
    required this.onButtonTap,
  });

  @override
  _CategoryButtonsState createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.categories.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  widget.onButtonTap(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.selectedButtonIndex == index
                        ? const Color.fromARGB(255, 156, 99, 78)
                        : Colors.black,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Center(
                      child: Text(
                        widget.categories[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
