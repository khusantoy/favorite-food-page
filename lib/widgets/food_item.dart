import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {
  String food;
  FoodItem(this.food);

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  Color bgcolor = Colors.brown.shade100;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              bgcolor = bgcolor == Colors.brown.shade100
                  ? Colors.orange
                  : Colors.brown.shade100;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: bgcolor,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
          ),
          child: Text(
            widget.food,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
