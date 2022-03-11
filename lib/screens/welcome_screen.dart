// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:chat_app/screens/Register_Screen.dart';
import 'package:chat_app/screens/SignIn_Screen.dart';
import 'package:flutter/material.dart';

import '../widget/My_Button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const String screenRoute = '/WlecomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('images/logo.png'),
                  height: 150,
                ),
              ),
              Text(
                'Messenger',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2e386b),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          myButton(
            title: 'Sign In',
            color: Colors.yellow[900]!,
            onPressed: () {
              Navigator.of(context).pushNamed(
                SignInScreen.screenRoute,
              );
            },
          ),
          myButton(
            color: Colors.blue[900]!,
            title: 'Register',
            onPressed: () {
              Navigator.of(context).pushNamed(
                RegisterScreen.screenRoute,
              );
            },
          ),
        ],
      ),
    );
  }
}
