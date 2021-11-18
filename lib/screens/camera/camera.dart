import 'package:flutter/material.dart';

import '../../custom_bot_navbar.dart';
import '../../enums.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key? key}) : super(key: key);
  static String routeName = '/camera_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Camera",
        ),
      ),
      bottomNavigationBar: CustomBotNavBar(
        selectedMenu: MenuState.camera,
      ),
    );
  }
}
