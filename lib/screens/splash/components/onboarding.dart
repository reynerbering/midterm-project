import 'package:flutter/material.dart';
import 'package:midterm_project/constants.dart';
import 'package:midterm_project/screens/favorites/favorites.dart';
import 'package:midterm_project/size_config.dart';

import '../../../default_button.dart';
import 'onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  List<Map<String, String>> onboardingData = [
    {
      "title": "Eat Healthy",
      "text":
      "Maintaining good health should be the primary focus of everyone.",
      "image": "assets/onboarding/food1.png"
    },
    {
      "title": "Healthy Recipes",
      "text": "Browse thousands of healthy recipes from all over the world",
      "image": "assets/onboarding/food2.png"
    },
    {
      "title": "Track Your Health",
      "text": "With amazing inbuilt tools you can track your progress",
      "image": "assets/onboarding/food3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) =>
                    OnboardingContent(
                      title: onboardingData[index]["title"].toString(),
                      text: onboardingData[index]["text"].toString(),
                      image: onboardingData[index]["image"].toString(),
                    ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboardingData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    DefaultButton(
                      text: "Get Started",
                      press: () {
                        Navigator.pushNamed(context, Favorites.routeName);
                      },
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already Have an Account?",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentPage == index ? 30 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ? secondaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
