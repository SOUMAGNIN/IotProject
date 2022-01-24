import 'package:flutter/material.dart';

import '../main.dart';


class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return LoginSignupUI();
    } else {
      return HomeScreen();
    }
  }
}
