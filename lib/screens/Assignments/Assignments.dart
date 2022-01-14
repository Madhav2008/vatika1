// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vatika/screens/Home/HomeScreen.dart';
import 'package:vatika/screens/Theme/provider/theme_provider.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:vatika/styles/app_text_style.dart';

class Assignments extends StatefulWidget {
  const Assignments({Key? key}) : super(key: key);

  @override
  _AssignmentsState createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    final greybox =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade900
            : Colors.white;
    final blacktext =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final primary1text =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : AppColor.primary1;
    final shadow =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white38
            : Colors.black12;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColor.primary1,
              AppColor.primary1.withOpacity(
                0.7,
              ),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(
                    15,
                  ),
                  child: Text(
                    'Assignments',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  width: width,
                  decoration: BoxDecoration(
                    color: greybox,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        38,
                      ),
                      topLeft: Radius.circular(
                        38,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                            20.0,
                          ),
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: greybox,
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: shadow,
                                  offset: const Offset(
                                    3.0,
                                    3.0,
                                  ),
                                  blurRadius: 5.0,
                                  spreadRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 17.0,
                                    left: 17.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.primary.withOpacity(
                                        0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.0,
                                        left: 20.0,
                                        right: 20.0,
                                        bottom: 10.0,
                                      ),
                                      child: Text(
                                        'Biology',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: primary1text,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 17.0,
                                    left: 17.0,
                                  ),
                                  child: Text(
                                    'Red Blood Cells',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: blacktext,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 12,
                                          ),
                                          child: Text(
                                            'Assign Date',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 15.0,
                                      ),
                                      child: Text(
                                        '17 Nov 2021',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 7,
                                          ),
                                          child: Text(
                                            'Last Date',
                                            style: AppTextStyle.style(
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 7.0,
                                      ),
                                      child: Text(
                                        '20 Nov 2021',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 7,
                                            bottom: 16,
                                          ),
                                          child: Text(
                                            'Status',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 7.0,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        'Pending',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        top: 16,
                                        bottom: 16,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              AppColor.primary1,
                                              AppColor.primary1.withOpacity(
                                                0.7,
                                              ),
                                            ],
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade500,
                                              blurRadius: 3,
                                            ),
                                          ],
                                          color: AppColor.primary1,
                                          borderRadius: BorderRadius.circular(
                                            35,
                                          ),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 47,
                                          vertical: 10,
                                        ),
                                        child: MouseRegion(
                                          cursor: SystemMouseCursors.click,
                                          child: GestureDetector(
                                            child: const Text(
                                              'To Be Submitted',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2,
                                              ),
                                            ),
                                            onTap: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //     builder: (BuildContext context) => LoginScreen(),
                                              //   ),
                                              // );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            20.0,
                          ),
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: greybox,
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: shadow,
                                  offset: const Offset(
                                    3.0,
                                    3.0,
                                  ),
                                  blurRadius: 5.0,
                                  spreadRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 17.0,
                                    left: 17.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.primary.withOpacity(
                                        0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.0,
                                        left: 20.0,
                                        right: 20.0,
                                        bottom: 10.0,
                                      ),
                                      child: Text(
                                        'Physics',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: primary1text,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 17.0,
                                    left: 17.0,
                                  ),
                                  child: Text(
                                    'BOHR Theory',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: blacktext,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 12,
                                          ),
                                          child: Text(
                                            'Assign Date',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 15.0,
                                      ),
                                      child: Text(
                                        '11 Nov 2021',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 7,
                                          ),
                                          child: Text(
                                            'Last Date',
                                            style: AppTextStyle.style(
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 7.0,
                                      ),
                                      child: Text(
                                        '20 Nov 2021',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 7,
                                            bottom: 16,
                                          ),
                                          child: Text(
                                            'Status',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 7.0,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        'Submitted',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            20.0,
                          ),
                          child: Container(
                            width: size.width,
                            decoration: BoxDecoration(
                              color: greybox,
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: shadow,
                                  offset: const Offset(
                                    3.0,
                                    3.0,
                                  ),
                                  blurRadius: 5.0,
                                  spreadRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 17.0,
                                    left: 17.0,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.primary.withOpacity(
                                        0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 10.0,
                                        left: 20.0,
                                        right: 20.0,
                                        bottom: 10.0,
                                      ),
                                      child: Text(
                                        'Chemistry',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: primary1text,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 17.0,
                                    left: 17.0,
                                  ),
                                  child: Text(
                                    'Organic Chemistry',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: blacktext,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 12,
                                          ),
                                          child: Text(
                                            'Assign Date',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 15.0,
                                      ),
                                      child: Text(
                                        '21 Oct 2021',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 7,
                                          ),
                                          child: Text(
                                            'Last Date',
                                            style: AppTextStyle.style(
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 7.0,
                                      ),
                                      child: Text(
                                        '27 Oct 2021',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 7,
                                            bottom: 16,
                                          ),
                                          child: Text(
                                            'Status',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                        top: 7.0,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        'Not Submitted (Expired)',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: blacktext,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
