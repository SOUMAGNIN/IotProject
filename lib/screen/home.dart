import 'package:flutter/material.dart';
import 'package:login_singup/screen/user.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'HomeScreen.dart';


class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser>(context);
    if (user == null) {
      return LoginSignupUI();
    } else {
      return HomeScreen();
    }
  }
}
