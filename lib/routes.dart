import 'package:flutter/widgets.dart';
import 'package:midterm_project/screens/camera/camera.dart';
import 'package:midterm_project/screens/favorites/favorites.dart';
import 'package:midterm_project/screens/homepage/homepage.dart';
import 'package:midterm_project/screens/profile/profile.dart';
import 'package:midterm_project/screens/search/search.dart';
import 'package:midterm_project/screens/splash_screen_intro.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  Favorites.routeName: (context)=> Favorites(),
  HomePage.routeName: (context) => HomePage(),
  SearchPage.routeName : (context) => SearchPage(),
  CameraPage.routeName : (context) => CameraPage(),
  ProfilePage.routeName : (context) => ProfilePage(),
};
