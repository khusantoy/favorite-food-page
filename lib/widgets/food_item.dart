import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  String food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown.shade100,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 14),
          ),
          child: Text(
            food,
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
