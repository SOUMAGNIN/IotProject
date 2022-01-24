
import 'package:flutter/material.dart';
import 'package:login_singup/screen/authenfication.dart';
import 'package:login_singup/screen/login_signup.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:login_singup/screen/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LoginSignupUI());
}

class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login Signup UI",
        home: LoginSignupScreen(),
      );
  }
}
