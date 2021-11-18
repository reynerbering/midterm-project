import 'package:flutter/material.dart';
import 'package:midterm_project/screens/splash/components/onboarding.dart';
import 'package:midterm_project/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: OnboardingPage(),
    );
  }
}
