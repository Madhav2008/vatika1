// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vatika/screens/Theme/provider/theme_provider.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:vatika/styles/app_text_style.dart';

class Friday extends StatefulWidget {
  const Friday({Key? key}) : super(key: key);

  @override
  _FridayState createState() => _FridayState();
}

class _FridayState extends State<Friday> {
  @override
  Widget build(BuildContext context) {
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
    return SingleChildScrollView(
      child: Container(
        color: AppColor.primary1,
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: greybox,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          'Computer Science',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          '08:15am - 09:00am',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 17, bottom: 17.0),
                                child: Text(
                                  'PRIYA ARORA',
                                  style: AppTextStyle.style(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 17.0),
                            child: Text(
                              'Period 1',
                              style: TextStyle(
                                fontSize: 17,
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
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: greybox,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          'Mathematics',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          '09:15am - 10:00am',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 17, bottom: 17.0),
                                child: Text(
                                  'PRIYA ARORA',
                                  style: AppTextStyle.style(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 17.0),
                            child: Text(
                              'Period 2',
                              style: TextStyle(
                                fontSize: 17,
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
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: greybox,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          'Physics',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          '10:15am - 11:00am',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 17, bottom: 17.0),
                                child: Text(
                                  'PRIYA ARORA',
                                  style: AppTextStyle.style(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 17.0),
                            child: Text(
                              'Period 3',
                              style: TextStyle(
                                fontSize: 17,
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
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: greybox,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          'History',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          '11:15am - 12:00pm',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 17, bottom: 17.0),
                                child: Text(
                                  'PRIYA ARORA',
                                  style: AppTextStyle.style(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 17.0),
                            child: Text(
                              'Period 4',
                              style: TextStyle(
                                fontSize: 17,
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
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: greybox,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          'Biology',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          '12:15pm - 1:00pm',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 17, bottom: 17.0),
                                child: Text(
                                  'PRIYA ARORA',
                                  style: AppTextStyle.style(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 17.0),
                            child: Text(
                              'Period 5',
                              style: TextStyle(
                                fontSize: 17,
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
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: greybox,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          'English',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, left: 17.0),
                        child: Text(
                          '1:15pm - 2:00pm',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 17, bottom: 17.0),
                                child: Text(
                                  'PRIYA ARORA',
                                  style: AppTextStyle.style(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 17.0),
                            child: Text(
                              'Period 6',
                              style: TextStyle(
                                fontSize: 17,
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
    );
  }
}
