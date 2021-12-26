// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:vatika/screens/Login/LoginScreen.dart';
import 'package:vatika/styles/app_color.dart';

import 'Top_Account.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopProfileAccount(size: size),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: size.height * 0.05),
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.045,
                  vertical: size.height * 0.025,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 3,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => LoginScreen(),
                      //   ),
                      // );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(Icons.person_sharp,
                              size: 30, color: AppColor.primary),
                          // Image.asset('../assets/images/user.png',
                          //     width: 30, height: 30),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              'Account setting',
                              style: TextStyle(
                                color: AppColor.primaryLight,
                                fontSize: size.width * 0.05,
                              ),
                            ),
                          ),
                        ]),
                        const Icon(
                          Icons.edit,
                          size: 30,
                          color: Colors.black,
                        ),
                        // Image.asset('../assets/images/pencil.png',
                        //     width: 30, height: 30),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: size.height * 0.02),
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.045,
                  vertical: size.height * 0.025,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 3,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: profileItems(
                        size: size,
                        title: 'Language',
                        icon: Icons.record_voice_over,
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: profileItems(
                        size: size,
                        title: 'Feedback',
                        icon: Icons.feedback_outlined,
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: profileItems(
                        size: size,
                        title: 'Rate us',
                        icon: Icons.star_rate_outlined,
                      ),
                    ),
                    SizedBox(height: size.height * 0.025),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: profileItems(
                        size: size,
                        title: 'New Version',
                        icon: Icons.new_releases_outlined,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.045),
                  // padding: const EdgeInsets.symmetric(
                  //   horizontal: 25,
                  //   vertical: 8,
                  // ),
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey.shade500,
                  //       blurRadius: 3,
                  //     )
                  //   ],
                  //   color: AppColor.primary,
                  //   borderRadius: BorderRadius.circular(8),
                  // ),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 3,
                        )
                      ],
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 7,
                    ),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                        // color: AppColor.primary,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const LoginScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row profileItems({
    size,
    icon,
    title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, size: 30, color: AppColor.primary),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: AppColor.primaryLight,
                  fontSize: size.width * 0.045,
                ),
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: size.width * 0.04,
        )
      ],
    );
  }
}
