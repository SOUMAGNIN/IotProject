
import 'package:flutter/material.dart';
import 'package:login_singup/Modules/authenfication.dart';
import 'package:login_singup/screen/login_signup.dart';
import "package:firebase_core/firebase_core.dart";
import 'package:login_singup/Modules/user.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(LoginSignupUI());
}

class LoginSignupUI extends StatelessWidget {
  const LoginSignupUI({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser>.value(
      value: Authentification().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  LoginSignupScreen() ,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
