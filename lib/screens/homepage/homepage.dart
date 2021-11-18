import 'package:flutter/material.dart';

import '../../custom_bot_navbar.dart';
import '../../enums.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/homepage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Homepage",
        ),
      ),
      bottomNavigationBar: CustomBotNavBar(
        selectedMenu: MenuState.homepage,
      ),
    );
  }
}
