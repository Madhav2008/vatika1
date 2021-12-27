// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vatika/screens/Home/HomeScreen.dart';
import 'package:vatika/styles/app_text_style.dart';

class Fees extends StatefulWidget {
  const Fees({Key? key}) : super(key: key);

  @override
  _FeesState createState() => _FeesState();
}

class _FeesState extends State<Fees> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF274686),
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
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
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Fees',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    // ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: width,
                  // height: height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(38),
                      topLeft: Radius.circular(38),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            width: size.width,
                            // height: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // ignore: duplicate_ignore
                              boxShadow: [
                                // ignore: const prefer_const_constructors
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: const Offset(3.0, 3.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 20,
                                          ),
                                          child: Text(
                                            'Receipt No.',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        top: 20,
                                      ),
                                      child: Text(
                                        '90871',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
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
                                            left: 17,
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Month',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        bottom: 17.0,
                                      ),
                                      child: Text(
                                        'November',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
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
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Payment Date',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        bottom: 17.0,
                                      ),
                                      child: Text(
                                        '8 Nov 2020',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
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
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                      ),
                                      child: Text(
                                        'Pending',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
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
                                            left: 17,
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Total Amount',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, bottom: 17.0),
                                      child: Text(
                                        '₹ 3000',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        // margin: const EdgeInsets.only(
                                        //   top: 16,
                                        //   bottom: 16,
                                        // ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              const Color(0xFF274686),
                                              Colors.blue.shade800,
                                            ]),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade500,
                                                blurRadius: 3,
                                              )
                                            ],
                                            color: Colors.blue.shade800,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 146,
                                            vertical: 10,
                                          ),
                                          // child: MouseRegion(
                                          // cursor: SystemMouseCursors.click,
                                          child: GestureDetector(
                                            child: const Text(
                                              'Pay Now ➡',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 3,
                                              ),
                                            ),
                                            // color: AppColor.primary,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            width: size.width,
                            // height: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // ignore: duplicate_ignore
                              boxShadow: [
                                // ignore: const prefer_const_constructors
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: const Offset(3.0, 3.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 20,
                                          ),
                                          child: Text(
                                            'Receipt No.',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        top: 20,
                                      ),
                                      child: Text(
                                        '90870',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
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
                                            left: 17,
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Month',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        bottom: 17.0,
                                      ),
                                      child: Text(
                                        'September',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
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
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Payment Date',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        bottom: 17.0,
                                      ),
                                      child: Text(
                                        '8 Sep 2020',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
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
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                      ),
                                      child: Text(
                                        'Paid',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
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
                                            left: 17,
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Total Amount',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, bottom: 17.0),
                                      child: Text(
                                        '₹ 3000',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        // margin: const EdgeInsets.only(
                                        //   top: 16,
                                        //   bottom: 16,
                                        // ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              const Color(0xFF274686),
                                              Colors.blue.shade800,
                                            ]),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade500,
                                                blurRadius: 3,
                                              )
                                            ],
                                            color: Colors.blue.shade800,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 140,
                                            vertical: 10,
                                          ),
                                          // child: MouseRegion(
                                          // cursor: SystemMouseCursors.click,
                                          child: GestureDetector(
                                            child: const Text(
                                              'Download ⬇',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 3,
                                              ),
                                            ),
                                            // color: AppColor.primary,
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
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            width: size.width,
                            // height: 250,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // ignore: duplicate_ignore
                              boxShadow: [
                                // ignore: const prefer_const_constructors
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: const Offset(3.0, 3.0),
                                  blurRadius: 5.0,
                                  spreadRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 17,
                                            top: 20,
                                          ),
                                          child: Text(
                                            'Receipt No.',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        top: 20,
                                      ),
                                      child: Text(
                                        '90869',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
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
                                            left: 17,
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Month',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        bottom: 17.0,
                                      ),
                                      child: Text(
                                        'August',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
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
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Payment Date',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                        bottom: 17.0,
                                      ),
                                      child: Text(
                                        '8 Aug 2020',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
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
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                      ),
                                      child: Text(
                                        'Paid',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 10.0,
                                    right: 10.0,
                                  ),
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
                                            left: 17,
                                            bottom: 17.0,
                                          ),
                                          child: Text(
                                            'Total Amount',
                                            style: AppTextStyle.style(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, bottom: 17.0),
                                      child: Text(
                                        '₹ 3000',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        // margin: const EdgeInsets.only(
                                        //   top: 16,
                                        //   bottom: 16,
                                        // ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              const Color(0xFF274686),
                                              Colors.blue.shade800,
                                            ]),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade500,
                                                blurRadius: 3,
                                              )
                                            ],
                                            color: Colors.blue.shade800,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 140,
                                            vertical: 10,
                                          ),
                                          // child: MouseRegion(
                                          // cursor: SystemMouseCursors.click,
                                          child: GestureDetector(
                                            child: const Text(
                                              'Download ⬇',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 3,
                                              ),
                                            ),
                                            // color: AppColor.primary,
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
