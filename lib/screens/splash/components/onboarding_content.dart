import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
      {Key? key, required this.text, required this.image, required this.title})
      : super(key: key);
  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(
          flex: 1,
        ),
        Text(
          "kcal",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(350),
          width: getProportionateScreenWidth(350),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF616161),
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
      ],
    );
  }
}
