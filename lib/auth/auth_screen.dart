import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login_screen.dart';
import 'package:instagram_clone/screens/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool registered = true;
  void go() {
    setState(() {
      registered = !registered;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (registered) {
      return LoginScreen(go);
    } else {
      return SignupScreen(go);
    }
    ;
  }
}
