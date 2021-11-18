import 'package:flutter/material.dart';
import 'package:midterm_project/routes.dart';
import 'package:midterm_project/screens/splash_screen_intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Midterm Project",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "nunito",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: "nunito",
              fontSize: 15,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
