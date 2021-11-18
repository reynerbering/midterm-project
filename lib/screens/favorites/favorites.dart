import 'package:flutter/material.dart';
import 'package:midterm_project/constants.dart';
import 'package:midterm_project/enums.dart';
import 'package:midterm_project/screens/favorites/foods.dart';
import 'package:midterm_project/screens/favorites/recipes.dart';

import '../../custom_bot_navbar.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);
  static String routeName = "/favorites";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Favorites",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

          child: Column(
            children: [
              Container(
                child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicator: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    tabs: [
                      Tab(
                        text: "Foods",
                      ),
                      Tab(
                        text: "Recipes",
                      )
                    ]),
              ),
              SizedBox(
                height: 300 ,
                child: TabBarView(
                  children: [
                    FoodsPage(),
                    RecipesPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBotNavBar(
          selectedMenu: MenuState.favorite,
        ),
      ),
    );
  }
}
