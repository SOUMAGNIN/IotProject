import 'package:flutter/material.dart';
import 'package:login_singup/Modules/user.dart';
import 'package:provider/provider.dart';


import 'login_signup.dart';
import 'home.dart';


class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser>(context);
    if (user == null) {
      return LoginSignupScreen() ;
    } else {
      return  HomePage() ; //HomeScreen();
    }
  }
}
