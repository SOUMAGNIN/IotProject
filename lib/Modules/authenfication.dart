import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_singup/Modules/user.dart';

import 'database.dart';

class Authentification {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AppUser  _userFromFirebaseUser  (User user) {
    return user != null ? AppUser(user.uid) : null;
  }

 Stream<AppUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result =
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      print("L utilisateur existe");
      return _userFromFirebaseUser(user);
    } catch (exception) {
      print("No user found");
      print(exception.toString());
      return null;
    }
  }

  Future registerWithEmailAndPassword(String name, String email, String password) async {
    try {
      UserCredential result =
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      if (user == null) {
        print("No user found");
        throw Exception("No user found");
      } else {
        print("L utilisateur existe");
        await DatabaseService(user.uid).saveUser(name, 0);
        return _userFromFirebaseUser(user);
      }
    } catch (exception) {
      print(exception.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (exception) {
      print(exception.toString());
      return null;
    }
  }
}