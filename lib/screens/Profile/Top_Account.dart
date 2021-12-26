// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vatika/screens/Notifications_Screen/Notifications_Screen.dart';
import 'package:vatika/styles/app_color.dart';

class TopProfileAccount extends StatelessWidget {
  const TopProfileAccount({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: size.height * 0.1),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.045,
        vertical: size.height * 0.015,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 3,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // const CircleAvatar(
          //   backgroundColor: Colors.grey,
          // backgroundImage: NetworkImage("https://st2.depositphotos.com/1006318/5909/v/950/depositphotos_59095529-stock-illustration-profile-icon-male-avatar.jpg"),
          // ),
          Icon(
            Icons.account_circle_rounded,
            size: 50,
            color: AppColor.primaryLight,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Madhav Arora',
                style: TextStyle(
                  color: AppColor.primaryLight,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.05,
                ),
              ),
              Text(
                'aroramadhav65@gmail.com',
                style: TextStyle(
                  color: AppColor.primary,
                  fontSize: size.width * 0.035,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => NotificationsScreen(),
                ),
              );
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Icon(
                Icons.circle_notifications,
                size: 35,
                color: AppColor.primaryLight,
              ),
            ),
          ),
          // BellWidget(size: size),
        ],
      ),
    );
  }
}
