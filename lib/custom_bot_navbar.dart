import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:midterm_project/screens/camera/camera.dart';
import 'package:midterm_project/screens/favorites/favorites.dart';
import 'package:midterm_project/screens/homepage/homepage.dart';
import 'package:midterm_project/screens/profile/profile.dart';
import 'package:midterm_project/screens/search/search.dart';

import 'constants.dart';
import 'enums.dart';

class CustomBotNavBar extends StatelessWidget {
  const CustomBotNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(
                0,
                -15,
              ),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            )
          ]),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/home.svg",
                color: MenuState.homepage == selectedMenu
                    ? primaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: MenuState.search == selectedMenu
                    ? primaryColor
                    : inActiveIconColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, SearchPage.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/camera.svg",
                color: MenuState.camera == selectedMenu
                    ? primaryColor
                    : inActiveIconColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, CameraPage.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/heart.svg",
                color: MenuState.favorite == selectedMenu
                    ? primaryColor
                    : inActiveIconColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, Favorites.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/profile.svg",
                color: MenuState.profile == selectedMenu
                    ? primaryColor
                    : inActiveIconColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, ProfilePage.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
