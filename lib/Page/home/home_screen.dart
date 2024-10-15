import 'package:flutter/material.dart';
import 'package:food_recipe/Page/home/widgets/enjoy_delicous_food_details.dart';
import 'package:food_recipe/Page/home/widgets/enjoy_delicous_food_menu.dart';
import 'package:food_recipe/Page/home/widgets/enjoy_delicous_food_widget.dart';
import 'package:food_recipe/constant/assestconstant.dart';
import 'package:food_recipe/constant/colorconstant.dart';
import 'package:food_recipe/project_spicific/buttomnavigator.dart';
import 'package:food_recipe/project_spicific/text_theme.dart';
import 'package:get/get.dart';
import 'screen/Ingradients.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List categories = [
    {"name": "Pizza", "image": Assestconstant.Pizza},
    {"name": "Burger", "image": Assestconstant.Burger},
    {"name": "Noodles", "image": Assestconstant.Noddles},
  ];

  final List details = [
    {
      "image": Assestconstant.EybisiSalad,
      "name": "Eybisi Salad Mix",
      "desc": "Mix vegetable ingredients"
    },
    {
      "image": Assestconstant.GreakSalad,
      "name": "Easy Greek Salad",
      "desc": "Loves and Lemon"
    },
  ];

  final List desc = [
    {
      "image": Assestconstant.FriedRice,
      "name": "Fried Rice",
      "desc": "Chinese, North Indian"
    },
    {
      "image": Assestconstant.Pasta,
      "name": "Pasta",
      "desc": "Chinese, Fast Food"
    },
  ];

  int _selectedIndex = 0;

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Colors.black),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "Search food",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/Icon/Filter Icon.png",
                height: 20,
                width: 20,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Text(
                'Enjoy Delicious Food',
                style: AppTextTheme.bold.copyWith(
                  fontSize: 22,
                  color: ColorConstant.blackColor,
                ),
              ),
            ),
            // Options Section
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return EnjoyDelicousFoodWidget(
                    image: categories[index]['image'],
                    isSelected: false,
                    name: categories[index]['name'],
                    onPress: () {},
                  );
                },
              ),
            ),
            // Menu Section
            SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: details.length,
                itemBuilder: (context, index) {
                  return EnjoyDelicousFoodMenu(
                    image: details[index]['image'],
                    isSelected: false,
                    name: details[index]['name'],
                    onPress: () {},
                    desc: details[index]['desc'],
                  );
                },
              ),
            ),
            // Details Section
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: desc.length,
              itemBuilder: (context, index) {
                return EnjoyDeliciousFoodDetails(
                  image: desc[index]['image'],
                  isSelected: false,
                  name: desc[index]['name'],
                  onPress: () {
                    Get.offAll(() => Ingradients());
                  },
                  desc: desc[index]['desc'],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarExample()
    );
  }
}
