import 'package:flutter/material.dart';

class CategoryButtons extends StatelessWidget {
  final List<String> categories;
  final int? selectedButtonIndex;
  final ValueChanged<int> onButtonTap;

  const CategoryButtons({
    Key? key,
    required this.categories,
    required this.selectedButtonIndex,
    required this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(categories.length, (index) {
        return GestureDetector(
          onTap: () => onButtonTap(index),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: selectedButtonIndex == index
                  ? Colors.amber
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.amber),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color:
                    selectedButtonIndex == index ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }),
    );
  }
}
