// ignore_for_file: camel_case_types, file_names

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vatika/screens/Home/HomeScreen.dart';
import 'package:vatika/screens/Theme/provider/theme_provider.dart';
import 'package:vatika/styles/app_color.dart';

class FAQ_Screen extends StatefulWidget {
  const FAQ_Screen({Key? key}) : super(key: key);

  @override
  _FAQ_ScreenState createState() => _FAQ_ScreenState();
}

class _FAQ_ScreenState extends State<FAQ_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
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
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8.0,
              ),
              child: const Center(
                child: Text(
                  "FAQ'S",
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
              AppColor.primary,
            ],
          ),
        ),
        child: ListView(
          children: const [
            Card1(),
            Card2(),
            Card3(),
            Card4(),
            Card5(),
            Card6(),
            Card7(),
            Card8(),
          ],
        ),
      ),
    );
  }
}

String question1 = "Question 1";
String answer1 = "Answer 1";

String question2 = "Question 2";
String answer2 = "Answer 2";

String question3 = "Question 3";
String answer3 = "Answer 3";

String question4 = "Question 4";
String answer4 = "Answer 4";

String question5 = "Question 5";
String answer5 = "Answer 5";

String question6 = "Question 6";
String answer6 = "Answer 6";

String question7 = "Question 7";
String answer7 = "Answer 7";

String question8 = "Question 8";
String answer8 = "Answer 8";

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 35,
          bottom: 10,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question1,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer1,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(
                          crossFadePoint: 0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question2,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer2,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question3,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer3,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card4 extends StatelessWidget {
  const Card4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question4,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer4,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card5 extends StatelessWidget {
  const Card5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question5,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer5,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card6 extends StatelessWidget {
  const Card6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question6,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer6,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card7 extends StatelessWidget {
  const Card7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 10,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question7,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer7,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card8 extends StatelessWidget {
  const Card8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;
    final color1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.grey.shade800
            : Colors.white;
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 35,
          left: 40,
          right: 40,
        ),
        child: Card(
          color: color1,
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                    tapBodyToCollapse: true,
                    tapBodyToExpand: true,
                    iconSize: 30,
                    iconColor: color,
                  ),
                  header: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      question8,
                      style: TextStyle(
                        color: color,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[],
                  ),
                  collapsed: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      answer8,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  builder: (_, expanded, collapsed) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
