// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vatika/screens/Home/HomeScreen.dart';
import 'package:vatika/screens/Quiz/screens/quizz_screen.dart';
import 'package:vatika/screens/Theme/provider/theme_provider.dart';
import 'package:vatika/styles/app_color.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final classes = [
    '1st Class',
    '2nd Class',
    '3rd Class',
    '4th Class',
    '5th Class',
    '6th Class',
    '7th Class',
    '8th Class',
    '9th Class',
    '10th Class',
    '11th Class',
    '12th Class',
  ];

  final subjects = [
    'Mathematics',
    'Biology',
    'Chemistry',
    'English',
    'Computer Science',
    'Hindi',
    'History',
    'Geography',
    'Civics',
    'Science',
    'Sanskrit',
    'French',
  ];

  String? value;
  String? value1;

  String hint1 = "Select Your Class";
  String hint2 = "Select Your Subject";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade900.withOpacity(0.8)
            : Colors.white;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8.0,
              ),
              child: Center(
                child: Text(
                  'Take Quiz',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: AppColor.primary1,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // colors: [Color(0xFF354FB4), Color(0xFF354FB4)]),
            colors: [
              AppColor.primary1,
              AppColor.primary1.withOpacity(0.7),
            ],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 70.0,
            vertical: 70.0,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // colors: [Color(0xFF354FB4), Color(0xFF354FB4)]),
              colors: [
                AppColor.primary1.withOpacity(0.9),
                AppColor.primary1,
              ],
            ),
            // color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: Text(
                  "Quizz",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: DropdownButton<String>(
                  hint: Text(
                    hint1,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                  value: value,
                  iconSize: 36,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: color,
                  ),
                  isExpanded: true,
                  items: classes.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() {
                    this.value = value;
                  }),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: DropdownButton<String>(
                  hint: Text(
                    hint2,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                  value: value1,
                  iconSize: 36,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: color,
                  ),
                  isExpanded: true,
                  items: subjects.map(buildMenuItem1).toList(),
                  onChanged: (value1) => setState(() {
                    this.value1 = value1;
                  }),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const QuizzScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.08,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 3,
                          ),
                        ],
                        color: AppColor.primary1,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 7,
                      ),
                      child: Text(
                        'Start Quiz',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // color: AppColor.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // child: SingleChildScrollView(
      // child: Padding(
      //   padding: const EdgeInsets.symmetric(
      //     vertical: 28.0,
      //     horizontal: 12.0,
      //   ),
      //   child: Column(
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.only(
      //           bottom: 20.0,
      //         ),
      //         // child: const Center(
      //         child: Text(
      //           "Select Your Class",
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 35,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         // ),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "1st Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "2nd Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "3rd Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "4th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "5th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "6th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "7th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "8th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "9th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "10th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "11th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 200,
      //             child: Padding(
      //               padding: const EdgeInsets.all(13.0),
      //               child: Expanded(
      //                 child: Center(
      //                   child: RawMaterialButton(
      //                     onPressed: () {
      //                       Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                           builder: (context) => QuizzScreen(),
      //                         ),
      //                       );
      //                     },
      //                     shape: const StadiumBorder(),
      //                     fillColor: AppColor.primary1,
      //                     child: const Padding(
      //                       padding: EdgeInsets.symmetric(
      //                         vertical: 12.0,
      //                         horizontal: 24.0,
      //                       ),
      //                       child: Text(
      //                         "12th Class",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 26.0,
      //                           fontWeight: FontWeight.bold,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      // ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String classes) => DropdownMenuItem(
        value: classes,
        child: Text(
          classes,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      );

  DropdownMenuItem<String> buildMenuItem1(String subjects) => DropdownMenuItem(
        value: subjects,
        child: Text(
          subjects,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      );
}
