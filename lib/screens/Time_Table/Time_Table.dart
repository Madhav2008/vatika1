// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vatika/screens/Time_Table/Monday.dart';
import 'package:vatika/screens/Time_Table/Saturday.dart';
import 'package:vatika/screens/Time_Table/Sunday.dart';
import 'package:vatika/styles/app_color.dart';
import 'Friday.dart';
import 'Thrusday.dart';
import 'Tuesday.dart';
import 'Wednesday.dart';

class TimeTable extends StatefulWidget {
  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Timetable',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              color: AppColor.primary1,
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  text: 'Mon',
                ),
                Tab(
                  text: 'Tues',
                ),
                Tab(
                  text: 'Wed',
                ),
                Tab(
                  text: 'Thru',
                ),
                Tab(
                  text: 'Fri',
                ),
                Tab(
                  text: 'Sat',
                ),
                Tab(
                  text: 'Sun',
                ),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              Monday(),
              Tuesday(),
              Wednesday(),
              Thrusday(),
              Friday(),
              Saturday(),
              Sunday(),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}

// import 'package:flutter/material.dart';
// import 'package:vatika/screens/Home/HomeScreen.dart';
// import 'package:vatika/screens/Profile/Profile_Screen.dart';
// import 'package:vatika/styles/app_color.dart';
//
// class TimeTable extends StatefulWidget {
//   @override
//   _TimeTableState createState() => _TimeTableState();
// }
//
// class _TimeTableState extends State<TimeTable>
//     with SingleTickerProviderStateMixin {
//   String title = 'BottomNavigationBar';
//
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 5, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _tabController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         centerTitle: true,
//       ),
//       body: TabBarView(
//         children: <Widget>[
//           HomeScreen(),
//           ProfileScreen(),
//           HomeScreen(),
//           ProfileScreen(),
//           HomeScreen(),
//         ],
//         // If you want to disable swiping in tab the use below code
//         physics: NeverScrollableScrollPhysics(),
//         controller: _tabController,
//       ),
//       bottomNavigationBar: Container(
//         padding: EdgeInsets.all(16.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.all(
//             Radius.circular(50.0),
//           ),
//           child: Container(
//             color: AppColor.primary,
//             child: TabBar(
//               labelColor: Colors.white,
//               unselectedLabelColor: Colors.white,
//               labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
//               indicator: UnderlineTabIndicator(
//                 borderSide: BorderSide(color: Colors.black54, width: 3.0),
//                 insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
//               ),
//               tabs: <Widget>[
//                 Tab(
//                   text: 'Mon',
//                 ),
//                 Tab(
//                   text: 'Tue',
//                 ),
//                 Tab(
//                   text: 'Wed',
//                 ),
//                 Tab(
//                   text: 'Thru',
//                 ),
//                 Tab(
//                   text: 'Fri',
//                 ),
//               ],
//               controller: _tabController,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
