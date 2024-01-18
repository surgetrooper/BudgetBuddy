// ignore_for_file: use_build_context_synchronously

import 'package:budgetbuddy/resources/auth_methods.dart';
import 'package:budgetbuddy/utils/colours.dart';
import 'package:budgetbuddy/widgets/button1.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // ignore: prefer_const_constructors
        Text(
          'BudgetBuddy',
          // ignore: unnecessary_const
          style: const TextStyle(
            fontFamily: 'SF Pro',
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: appbarcolor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
          child: Image.asset('assets/images/img1.jpg'),
        ),
        // ignore: prefer_const_constructors
        CustomButton(
          text: 'Login',
          onPressed: () async {
            bool res = await _authMethods.signInWithGoogle(context);
            if (res) {
              Navigator.pushNamed(context, '/navbar');
            }
          },
        ),
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          // ignore: prefer_const_constructors
          child: Text(
            '-By Harsh Bharwani\nfor Vashishth Technologies',
            style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: appbarcolor,
                fontFamily: 'SF Pro'),
          ),
        )
      ]),
    );
  }
}
