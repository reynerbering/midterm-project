import 'package:flutter/material.dart';

class FoodsPage extends StatefulWidget {
  const FoodsPage({Key? key}) : super(key: key);

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("THIS IS THE FOOD SECTION"),
      ],
    );
  }
}
