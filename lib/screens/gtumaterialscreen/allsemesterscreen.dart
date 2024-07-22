// import 'package:flutter/material.dart';
// import 'package:flutter_basics/screens/gtumaterialscreen/semester_1/semester_1_screen.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import 'package:get/get.dart';

// class Allsem extends StatefulWidget {
//   const Allsem({super.key});

//   @override
//   State<Allsem> createState() => _AllsemState();
// }

// class _AllsemState extends State<Allsem>with SingleTickerProviderStateMixin {
//     TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//     _tabController.addListener(_handleTabSelection);
//   }

//   void _handleTabSelection() {
//     setState(() {});
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//         children: [
//           TabBar(
//             controller: _tabController,
//             tabs: [
//               Tab(text: 'Tab 1'),
//               Tab(text: 'Tab 2'),
//               Tab(text: 'Tab 3'),
//             ],
//           ),
//           Expanded(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 Center(child: Text('Tab 1 Screen')),
//                 Center(child: Text('Tab 2 Screen')),
//                 Center(child: Text('Tab 3 Screen')),
//               ],
//             ),
//           ),
//         ],
//       ),
//        );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_1/sem_1_display.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_1/semester_1_screen.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_2/sem_2_display.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_3/sem_3_display.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_4/sem_4_display.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_5/sem_5_display.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_6/sem_6_display.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_7/sem_7_display.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_8/sem_8_display.dart';

class Allsem extends StatefulWidget {
  // const Allsem({Key key}) : super(key: key);
  const Allsem({super.key});
  @override
  State<Allsem> createState() => _AllsemState();
}

class _AllsemState extends State<Allsem> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 8, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Select a Semester :",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: '1'),
              Tab(text: '2'),
              Tab(text: '3'),
              Tab(text: '4'),
              Tab(text: '5'),
              Tab(text: '6'),
              Tab(text: '7'),
              Tab(text: '8'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Sem1Display(),
                Sem2Display(),
                Sem3Display(),
                Sem4Display(),
                Sem5Display(),
                Sem6Display(),
                Sem7Display(),
                Sem8Display(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}



      // body:
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 10,
      //       ),
      //       SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Row(
      //           children: [
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                 color: TColors.g1main,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {
      //                   Get.to(Semester1screen());
      //                 },
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 1',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                 color: TColors.g1main,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 2',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                  color: TColors.g1main,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 3',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                 color: Colors.amber,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 4',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                 color: Colors.amber,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 5',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                 color: Colors.amber,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 6',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                 color: Colors.amber,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 7',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Container(
      //               height: Get.height * 0.1,
      //               width: Get.width * 0.2,
      //               decoration: BoxDecoration(
      //                 color: Colors.amber,
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   child: Center(
      //                       child: Text(
      //                     'Sem 8',
      //                     style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600),
      //                   )),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
   
