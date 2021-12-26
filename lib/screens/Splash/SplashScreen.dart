// ignore_for_file: file_names, use_key_in_widget_constructors, must_call_super, prefer_const_constructors, annotate_overrides, sized_box_for_whitespace

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vatika/screens/Login/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // @override
  void initState() {
    Timer(Duration(seconds: 3), start);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // colors: [Color(0xFF354FB4), Color(0xFF354FB4)]),
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade700
                // AppColor.primary,
                // AppColor.primaryLight
              ]),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width / 2 + 50,
            child: Column(
              children: [
                Image.asset(
                  "../assets/images/Vatika.gif",
                ),
              ],
            ),
            // child: FlareActor(
            //   "../assets/images/splash.flr",
            //   animation: "start",
            //   fit: BoxFit.fill,
            // ),
          ),
        ),
      ),
    );
  }

  start() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
        ),
      );
    });
  }
}
