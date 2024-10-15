import 'package:flutter/material.dart';
import 'package:food_recipe/constant/assestconstant.dart';

class Ingradients extends StatelessWidget {
  const Ingradients({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(Assestconstant.FriedRice)
        ],
      ),
    );
  }
}
