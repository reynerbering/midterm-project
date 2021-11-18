import 'package:flutter/material.dart';

import '../../custom_bot_navbar.dart';
import '../../enums.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  static String routeName = '/search_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search",
        ),
      ),
      bottomNavigationBar: CustomBotNavBar(
        selectedMenu: MenuState.search,
      ),
    );;
  }
}
