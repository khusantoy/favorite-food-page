import 'package:favorite_food_page/widgets/food_item.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  List<String> breakfast_foods = [
    "Pancakes",
    "Bacon and eggs",
    "Oatmeal",
    "Breakfast burrito",
    "French toast"
  ];

  List<String> italianDishes = [
    "Spaghetti",
    "Margherita Pizza",
    "Lasagna",
    "Risotto",
    "Caprese Salad"
  ];

  List<String> comfortDishes = [
    "Macaroni and cheese",
    "Chicken pot pie",
    "Mashed potatoes",
    "Beef stew",
    "Grilled cheese"
  ];

  List<String> healthySnack = [
    "Carrot sticks",
    "Greek yogurt",
    "Almonds",
    "Apple slices",
    "Rice cakes"
  ];

  List<String> fruits = ["Apple", "Banana", "Orange", "Strawbery", "Mango"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 110,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Container(
                width: 15,
                height: 3,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                width: 15,
                height: 3,
                decoration: BoxDecoration(color: Colors.grey.shade300),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                width: 15,
                height: 3,
                decoration: BoxDecoration(color: Colors.grey.shade300),
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                width: 15,
                height: 3,
                decoration: BoxDecoration(color: Colors.grey.shade300),
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose your\nfavourite food",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 91, 68, 59),
                  ),
                ),
                Text(
                  "2 of 5",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 91, 68, 59),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        for (var food in breakfast_foods) FoodItem(food)
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        for (var food in italianDishes) FoodItem(food)
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        for (var food in comfortDishes) FoodItem(food)
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [for (var food in healthySnack) FoodItem(food)],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [for (var fruit in fruits) FoodItem(fruit)],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 235, 184, 165),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
