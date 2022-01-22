// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:vatika/styles/app_color.dart';

class OpenNotificationScreen extends StatefulWidget {
  const OpenNotificationScreen({Key? key}) : super(key: key);

  @override
  _OpenNotificationScreenState createState() => _OpenNotificationScreenState();
}

class _OpenNotificationScreenState extends State<OpenNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notification Heading",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.primary1,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.primary1,
              AppColor.primary1.withOpacity(0.7),
            ],
          ),
        ),
      ),
    );
  }
}
