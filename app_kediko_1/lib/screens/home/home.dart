import 'package:app_kediko_1/constants/colors.dart';
//importando los colores de la app
import 'package:app_kediko_1/models/restaurant.dart';
//importando la libreria Restaurant
import 'package:app_kediko_1/screens/home/widget/food_list.dart';
//importando foofList
import 'package:app_kediko_1/screens/home/widget/restaurant_info.dart';
//importando los colores de la app
import 'package:flutter/material.dart';
import 'package:app_kediko_1/widgets/custom_app_bar.dart';
//importando la carpeta widgets y el archivo custom_app_bar
import 'package:app_kediko_1/screens/home/widget/food_list_view.dart';
//importando food list view

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  //declarar la variable del selector
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          ),
        ],
      ),
    );
  }
}
