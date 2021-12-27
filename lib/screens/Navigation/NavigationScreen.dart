// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vatika/screens/Home/HomeScreen.dart';
import 'package:vatika/screens/Profile/ProfileScreen.dart';
import 'package:vatika/styles/app_color.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  List bottomNavigationBarIcons = [
    Icons.home_filled,
    // Icons.photo,
    Icons.person,
    // '../assets/images/Vatika.gif',
    // '../assets/images/splash.png',
    // '../assets/images/go2.gif',
    // 'assets/images/Profile_icon.svg',
  ];

  List childrenBody = [
    HomeScreen(),
    // GalleryScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: Container(
          height: size.height * 0.08,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 3,
              )
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomNavigationBarIcons.length,
              (index) => InkWell(
                onTap: () {
                  setState(() => selectedIndex = index);
                },
                child: Icon(
                  bottomNavigationBarIcons[index],
                  size: 40,
                  color: selectedIndex == index
                      ? AppColor.primaryLight
                      // AppColor.primary
                      : Colors.grey.shade700,
                ),
              ),
            ),
          ),
        ),
        body: childrenBody[selectedIndex],
      ),
    );
  }
}
