import 'package:flutter/material.dart';

import '../../custom_bot_navbar.dart';
import '../../enums.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
        ),
      ),
      bottomNavigationBar: CustomBotNavBar(
        selectedMenu: MenuState.profile,
      ),
    );;
  }
}
