// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vatika/screens/Theme/provider/theme_provider.dart';
import 'package:vatika/styles/app_color.dart';

class Sunday extends StatefulWidget {
  const Sunday({Key? key}) : super(key: key);

  @override
  _SundayState createState() => _SundayState();
}

class _SundayState extends State<Sunday> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final blacktext =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.black
            : Colors.white;
    return Container(
      color: AppColor.primary1,
      child: Center(
        child: Text(
          'Holiday',
          style: TextStyle(
            fontSize: size.width / 6,
            fontWeight: FontWeight.bold,
            color: blacktext,
          ),
        ),
      ),
    );
  }
}
