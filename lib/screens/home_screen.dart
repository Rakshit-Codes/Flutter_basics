// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_basics/screens/chatbot.dart';
// import 'package:flutter_basics/screens/chatscreen.dart';
// import 'package:flutter_basics/screens/gtumaterialscreen/gtumaterialscreen.dart';
// import 'package:flutter_basics/screens/setting.dart';
// import 'package:flutter_basics/email_auth/login.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   void logOut() async {
//     await FirebaseAuth.instance.signOut();
//     Navigator.popUntil(context, (route) => route.isFirst);
//     Navigator.pushReplacement(
//         context, CupertinoPageRoute(builder: (context) => LoginScreen()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               Get.to(SettingScreen());
//             },
//             icon: Icon(Icons.menu)),
//         title: Text('HOME'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Get.to(GtuMaterilaScreen());
//                   // Navigate to the desired screen here
//                 },
//                 child: Container(
//                   width: Get.width * 0.90,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: const Color.fromARGB(255, 220, 142, 71),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.6),
//                         spreadRadius: 1,
//                         blurRadius: 3,
//                         offset:
//                             const Offset(0, 2), // changes position of shadow
//                       ),
//                     ],
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 16),
//                     child: Row(
//                       children: [
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Icon(
//                           Iconsax.book,
//                           size: 28,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Expanded(
//                           child: Text(
//                             "GTU Material ",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black87,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(SettingScreen());
//                       // Navigate to the desired screen here
//                     },
//                     child: Container(
//                       width: Get.width * 0.43,
//                       height: 230,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: const Color.fromARGB(255, 58, 201, 250),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(
//                                 0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   height: 30,
//                                 ),
//                                 Icon(
//                                   Iconsax.personalcard,
//                                   size: 70,
//                                   color: Color.fromARGB(255, 0, 0, 0),
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     "    GTU\nMaterial",
//                                     style: TextStyle(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(SettingScreen());
//                       // Navigate to the desired screen here
//                     },
//                     child: Container(
//                       width: Get.width * 0.43,
//                       height: 230,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Color.fromARGB(255, 98, 82, 202),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(
//                                 0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   height: 30,
//                                 ),
//                                 Icon(
//                                   Iconsax.personalcard,
//                                   size: 70,
//                                   color: Color.fromARGB(255, 0, 0, 0),
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     "    GTU\nMaterial",
//                                     style: TextStyle(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(SettingScreen());
//                       // Navigate to the desired screen here
//                     },
//                     child: Container(
//                       width: Get.width * 0.43,
//                       height: 230,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.cyan,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(
//                                 0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   height: 30,
//                                 ),
//                                 Icon(
//                                   Iconsax.personalcard,
//                                   size: 70,
//                                   color: Color.fromARGB(255, 0, 0, 0),
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     "    GTU\nMaterial",
//                                     style: TextStyle(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(SettingScreen());
//                       // Navigate to the desired screen here
//                     },
//                     child: Container(
//                       width: Get.width * 0.43,
//                       height: 230,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.purple,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(
//                                 0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 SizedBox(
//                                   height: 30,
//                                 ),
//                                 Icon(
//                                   Iconsax.personalcard,
//                                   size: 70,
//                                   color: Color.fromARGB(255, 0, 0, 0),
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     "    GTU\nMaterial",
//                                     style: TextStyle(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.w500,
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [],
//               ),
//               SizedBox(
//                 height: 11,
//               ),
//             ],
//           ),
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Color.fromARGB(170, 255, 255, 255),
//         onPressed: () {
//           Get.to(ChatScreen());
//         },
//         child: icon(Icons.search,color: Colors.cyan[700],),
//       ),

//     );
//   }
// }











// import 'dart:ffi';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_basics/screens/chatscreen.dart';
// import 'package:flutter_basics/screens/facultydetailscreen.dart';
// import 'package:flutter_basics/screens/gtumaterialscreen/gtumaterialscreen.dart';
// import 'package:flutter_basics/screens/gtupaper.dart';
// import 'package:flutter_basics/screens/my_profile_screen.dart';
// import 'package:flutter_basics/screens/noticeboard.dart';
// import 'package:flutter_basics/screens/setting.dart';
// import 'package:flutter_basics/email_auth/login.dart';
// import 'package:flutter_basics/screens/timetable.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//     int _selectedIndex = 0;
//   void logOut() async {
//     await FirebaseAuth.instance.signOut();
//     Navigator.popUntil(context, (route) => route.isFirst);
//     Navigator.pushReplacement(
//         context, CupertinoPageRoute(builder: (context) => LoginScreen()));
//   }
//    List<Widget> _widgetOptions = <Widget>[
   
//     ProfileScreen(),
//     ProfileScreen(),
//     ProfileScreen(),
    
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.blue[800],
//         bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Add Product',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.redeem),
//             label: 'Redeem Product',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: TColors.success,
//         onTap: _onItemTapped,
//       ),
//         // bottomNavigationBar: BottomNavigationBar(
//         //   items: [
//         //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         //   ],
//         // ),
//         // appBar: AppBar(
//         //   leading: IconButton(
//         //       onPressed: () {
//         //         Get.to(SettingScreen());
//         //       },
//         //       icon: Icon(Icons.menu)),
//         //   title: Text('HOME'),
//         //   centerTitle: true,
//         // ),
//         body:
//             // Center(
//             //   child: Padding(
//             //     padding: const EdgeInsets.all(20),
//             //     child: SingleChildScrollView(
//             //       child: Column(
//             //         // mainAxisAlignment: MainAxisAlignment.center,
//             //         // crossAxisAlignment: CrossAxisAlignment.center,
//             //         children: [
//             //           Center(
//             //             child: Text(
//             //               'Step up your academic game with student line',
//             //               style: TextStyle(fontSize: 30),
//             //             ),
//             //           ),
//             //           SizedBox(
//             //             height: 25,
//             //           ),
//             //           GestureDetector(
//             //             onTap: () {
//             //               Get.to(GtuMaterilaScreen());
//             //               // Navigate to the desired screen here
//             //             },
//             //             child: Container(
//             //               width: Get.width * 0.90,
//             //               height: 150,
//             //               decoration: BoxDecoration(
//             //                 borderRadius: BorderRadius.circular(20),
//             //                 // color: const Color.fromARGB(255, 220, 142, 71),
//             //                 color: Color(0xFF9c27b0),
//             //                 boxShadow: [
//             //                   BoxShadow(
//             //                     color: Colors.grey.withOpacity(0.6),
//             //                     spreadRadius: 1,
//             //                     blurRadius: 3,
//             //                     offset:
//             //                         const Offset(0, 2), // changes position of shadow
//             //                   ),
//             //                 ],
//             //               ),
//             //               child: const Padding(
//             //                 padding: EdgeInsets.symmetric(horizontal: 16),
//             //                 child: Row(
//             //                   children: [
//             //                     SizedBox(
//             //                       width: 20,
//             //                     ),
//             //                     Icon(
//             //                       Iconsax.book,
//             //                       size: 28,
//             //                       color: Colors.orange,
//             //                     ),
//             //                     SizedBox(
//             //                       width: 20,
//             //                     ),
//             //                     Expanded(
//             //                       child: Text(
//             //                         "GTU Material ",
//             //                         style: TextStyle(
//             //                           fontSize: 20,
//             //                           fontWeight: FontWeight.w500,
//             //                           color: Colors.black87,
//             //                         ),
//             //                       ),
//             //                     ),
//             //                   ],
//             //                 ),
//             //               ),
//             //             ),
//             //           ),
//             //           SizedBox(
//             //             height: 25,
//             //           ),
//             //           Row(
//             //             children: [
//             //               GestureDetector(
//             //                 onTap: () {
//             //                   Get.to(NoticeBoard());
//             //                   // Navigate to the desired screen here
//             //                 },
//             //                 child: Container(
//             //                   width: Get.width * 0.43,
//             //                   height: 230,
//             //                   decoration: BoxDecoration(
//             //                     borderRadius: BorderRadius.circular(20),
//             //                     color: const Color.fromARGB(255, 39, 174, 96),
//             //                     // color: Colors.blue.shade600,
//             //                     boxShadow: [
//             //                       BoxShadow(
//             //                         color: Colors.grey.withOpacity(0.6),
//             //                         spreadRadius: 1,
//             //                         blurRadius: 3,
//             //                         offset: const Offset(
//             //                             0, 2), // changes position of shadow
//             //                       ),
//             //                     ],
//             //                   ),
//             //                   child: const Padding(
//             //                     padding: EdgeInsets.symmetric(horizontal: 16),
//             //                     child: Row(
//             //                       mainAxisAlignment: MainAxisAlignment.center,
//             //                       crossAxisAlignment: CrossAxisAlignment.center,
//             //                       children: [
//             //                         Column(
//             //                           mainAxisAlignment: MainAxisAlignment.center,
//             //                           crossAxisAlignment: CrossAxisAlignment.center,
//             //                           children: [
//             //                             SizedBox(
//             //                               height: 30,
//             //                             ),
//             //                             Icon(
//             //                               Iconsax.personalcard,
//             //                               size: 70,
//             //                               color: Color.fromARGB(255, 0, 0, 0),
//             //                             ),
//             //                             SizedBox(
//             //                               height: 12,
//             //                             ),
//             //                             Expanded(
//             //                               child: Text(
//             //                                 " Notice\n Board",
//             //                                 style: TextStyle(
//             //                                   fontSize: 24,
//             //                                   fontWeight: FontWeight.w500,
//             //                                   color: Colors.black87,
//             //                                 ),
//             //                               ),
//             //                             ),
//             //                           ],
//             //                         ),
//             //                       ],
//             //                     ),
//             //                   ),
//             //                 ),
//             //               ),
//             //               SizedBox(
//             //                 width: 15,
//             //               ),
//             //               GestureDetector(
//             //                 onTap: () {
//             //                   Get.to(TimeTable());
//             //                   // Navigate to the desired screen here
//             //                 },
//             //                 child: Container(
//             //                   width: Get.width * 0.43,
//             //                   height: 230,
//             //                   decoration: BoxDecoration(
//             //                     borderRadius: BorderRadius.circular(20),
//             //                     color: Color.fromARGB(255, 98, 82, 202),
//             //                     boxShadow: [
//             //                       BoxShadow(
//             //                         color: Colors.grey.withOpacity(0.6),
//             //                         spreadRadius: 1,
//             //                         blurRadius: 3,
//             //                         offset: const Offset(
//             //                             0, 2), // changes position of shadow
//             //                       ),
//             //                     ],
//             //                   ),
//             //                   child: const Padding(
//             //                     padding: EdgeInsets.symmetric(horizontal: 16),
//             //                     child: Row(
//             //                       mainAxisAlignment: MainAxisAlignment.center,
//             //                       crossAxisAlignment: CrossAxisAlignment.center,
//             //                       children: [
//             //                         Column(
//             //                           mainAxisAlignment: MainAxisAlignment.center,
//             //                           crossAxisAlignment: CrossAxisAlignment.center,
//             //                           children: [
//             //                             SizedBox(
//             //                               height: 30,
//             //                             ),
//             //                             Icon(
//             //                               Iconsax.personalcard,
//             //                               size: 70,
//             //                               color: Color.fromARGB(255, 0, 0, 0),
//             //                             ),
//             //                             SizedBox(
//             //                               height: 12,
//             //                             ),
//             //                             Expanded(
//             //                               child: Text(
//             //                                 " Time\n Table",
//             //                                 style: TextStyle(
//             //                                   fontSize: 24,
//             //                                   fontWeight: FontWeight.w500,
//             //                                   color: Colors.black87,
//             //                                 ),
//             //                               ),
//             //                             ),
//             //                           ],
//             //                         ),
//             //                       ],
//             //                     ),
//             //                   ),
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //           SizedBox(
//             //             height: 15,
//             //           ),
//             //           Row(
//             //             children: [
//             //               GestureDetector(
//             //                 onTap: () {
//             //                   Get.to(GtuPaper());
//             //                   // Navigate to the desired screen here
//             //                 },
//             //                 child: Container(
//             //                   width: Get.width * 0.43,
//             //                   height: 230,
//             //                   decoration: BoxDecoration(
//             //                     borderRadius: BorderRadius.circular(20),
//             //                     color: const Color.fromARGB(255, 58, 201, 250),
//             //                     boxShadow: [
//             //                       BoxShadow(
//             //                         color: Colors.grey.withOpacity(0.9),
//             //                         spreadRadius: 1,
//             //                         blurRadius: 3,
//             //                         offset: const Offset(
//             //                             0, 2), // changes position of shadow
//             //                       ),
//             //                     ],
//             //                   ),
//             //                   child: const Padding(
//             //                     padding: EdgeInsets.symmetric(horizontal: 16),
//             //                     child: Row(
//             //                       mainAxisAlignment: MainAxisAlignment.center,
//             //                       crossAxisAlignment: CrossAxisAlignment.center,
//             //                       children: [
//             //                         Column(
//             //                           mainAxisAlignment: MainAxisAlignment.center,
//             //                           crossAxisAlignment: CrossAxisAlignment.center,
//             //                           children: [
//             //                             SizedBox(
//             //                               height: 30,
//             //                             ),
//             //                             Icon(
//             //                               Iconsax.personalcard,
//             //                               size: 70,
//             //                               color: Color.fromARGB(255, 0, 0, 0),
//             //                             ),
//             //                             SizedBox(
//             //                               height: 12,
//             //                             ),
//             //                             Expanded(
//             //                               child: Text(
//             //                                 " GTU\n Paper",
//             //                                 style: TextStyle(
//             //                                   fontSize: 24,
//             //                                   fontWeight: FontWeight.w500,
//             //                                   color: Colors.black87,
//             //                                 ),
//             //                               ),
//             //                             ),
//             //                           ],
//             //                         ),
//             //                       ],
//             //                     ),
//             //                   ),
//             //                 ),
//             //               ),
//             //               SizedBox(
//             //                 width: 15,
//             //               ),
//             //               GestureDetector(
//             //                 onTap: () {
//             //                   Get.to(FacultyScreen());
//             //                   // Navigate to the desired screen here
//             //                 },
//             //                 child: Container(
//             //                   width: Get.width * 0.43,
//             //                   height: 230,
//             //                   decoration: BoxDecoration(
//             //                     borderRadius: BorderRadius.circular(20),
//             //                     color: const Color.fromARGB(255, 99, 82, 202),
//             //                     boxShadow: [
//             //                       BoxShadow(
//             //                         color: Colors.grey.withOpacity(0.6),
//             //                         spreadRadius: 1,
//             //                         blurRadius: 3,
//             //                         offset: const Offset(
//             //                             0, 2), // changes position of shadow
//             //                       ),
//             //                     ],
//             //                   ),
//             //                   child: const Padding(
//             //                     padding: EdgeInsets.symmetric(horizontal: 16),
//             //                     child: Row(
//             //                       mainAxisAlignment: MainAxisAlignment.center,
//             //                       crossAxisAlignment: CrossAxisAlignment.center,
//             //                       children: [
//             //                         Column(
//             //                           mainAxisAlignment: MainAxisAlignment.center,
//             //                           crossAxisAlignment: CrossAxisAlignment.center,
//             //                           children: [
//             //                             SizedBox(
//             //                               height: 30,
//             //                             ),
//             //                             Icon(
//             //                               Iconsax.personalcard,
//             //                               size: 70,
//             //                               color: Color.fromARGB(255, 0, 0, 0),
//             //                             ),
//             //                             SizedBox(
//             //                               height: 12,
//             //                             ),
//             //                             Expanded(
//             //                               child: Text(
//             //                                 " Faculty\n Details",
//             //                                 style: TextStyle(
//             //                                   fontSize: 24,
//             //                                   fontWeight: FontWeight.w500,
//             //                                   color: Colors.black87,
//             //                                 ),
//             //                               ),
//             //                             ),
//             //                           ],
//             //                         ),
//             //                       ],
//             //                     ),
//             //                   ),
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             //           SizedBox(
//             //             height: 20,
//             //           ),
//             //           Row(
//             //             children: [],
//             //           ),
//             //           SizedBox(
//             //             height: 11,
//             //           ),
//             //         ],
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             // floatingActionButton: FloatingActionButton(
//             //   backgroundColor: Color.fromARGB(170, 255, 255, 255),
//             //   onPressed: () {
//             //     Get.to(ChatScreen());
//             //   },
//             //   child: Icon(
//             //     Icons.search,
//             //     color: Colors.cyan[700],
//             //   ),
//             // ),

//             SafeArea(
//           child: Column(
//             children: [
//               // Greeting row
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         // hii rakshit !
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'hi, rakshit !',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               '9 april, 2024',
//                               style: TextStyle(color: Colors.blue[200]),
//                             )
//                           ],
//                         ),
//                         // Notification

//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.blue[600],
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           padding: EdgeInsets.all(12),
//                           child: Icon(
//                             Icons.notifications,
//                             color: Colors.white,
//                             size: 24,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(
//                 height: 25,
//               ),

//               // search bar
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.blue[600],
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 padding: EdgeInsets.all(12),
//                 child: Row(
//                   children: [
//                     Icon(
//                       Icons.search,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       'Search',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(
//                 height: 25,
//               ),

//               Row(
//                 children: [
//                   Text(
//                     ' Step up your \n academic game with studentline',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   // Icon(Icons.more_horiz),
//                 ],
//               ),
//               SizedBox(
//                 height: 25,
//               ),

//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(25),
//                   color: Colors.grey[200],
//                   child: Center(
//                     child: Column(
//                       children: [
//                         // Exercise heading
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Category',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                               ),
//                             ),
//                             Icon(Icons.more_horiz),
//                           ],
//                         ),

//                         SizedBox(
//                           height: 20,
//                         ),

//                         // listview of category
//                         Container(
//                           padding: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(12),
//                                     child: Container(
//                                       padding: EdgeInsets.all(16),
//                                       color: Colors.orange,
//                                       child: Icon(
//                                         Icons.book,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 12,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       //title
//                                       Text(
//                                         'GTU Material',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               Icon(Icons.more_horiz),
//                             ],
//                           ),
//                         ),


//                         SizedBox(
//                           height: 25,
//                         ),

//                           Container(
//                           padding: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(12),
//                                     child: Container(
//                                       padding: EdgeInsets.all(16),
//                                       color: Colors.orange,
//                                       child: Icon(
//                                         Icons.book,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 12,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       //title
//                                       Text(
//                                         'GTU Material',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               Icon(Icons.more_horiz),
//                             ],
//                           ),
//                         ),

//                         SizedBox(
//                           height: 25,
//                         ),

//                           Container(
//                           padding: EdgeInsets.all(20),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(12),
//                                     child: Container(
//                                       padding: EdgeInsets.all(16),
//                                       color: Colors.orange,
//                                       child: Icon(
//                                         Icons.book,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 12,
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       //title
//                                       Text(
//                                         'GTU Material',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               Icon(Icons.more_horiz),
//                             ],
//                           ),
//                         ),


//                         // SizedBox(
//                         //   height: 25,
//                         // ),

//                         //   Container(
//                         //   padding: EdgeInsets.all(20),
//                         //   decoration: BoxDecoration(
//                         //     color: Colors.white,
//                         //     borderRadius: BorderRadius.circular(16),
//                         //   ),
//                         //   child: Row(
//                         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         //     children: [
//                         //       Row(
//                         //         children: [
//                         //           ClipRRect(
//                         //             borderRadius: BorderRadius.circular(12),
//                         //             child: Container(
//                         //               padding: EdgeInsets.all(16),
//                         //               color: Colors.orange,
//                         //               child: Icon(
//                         //                 Icons.book,
//                         //                 color: Colors.white,
//                         //               ),
//                         //             ),
//                         //           ),
//                         //           SizedBox(
//                         //             width: 12,
//                         //           ),
//                         //           Column(
//                         //             crossAxisAlignment:
//                         //                 CrossAxisAlignment.start,
//                         //             children: [
//                         //               //title
//                         //               Text(
//                         //                 'GTU Material',
//                         //                 style: TextStyle(
//                         //                   fontWeight: FontWeight.bold,
//                         //                   fontSize: 16,
//                         //                 ),
//                         //               )
//                         //             ],
//                         //           ),
//                         //         ],
//                         //       ),
//                         //       Icon(Icons.more_horiz),
//                         //     ],
//                         //   ),
//                         // ),


//                         // SizedBox(
//                         //   height: 25,
//                         // ),

//                         //   Container(
//                         //   padding: EdgeInsets.all(20),
//                         //   decoration: BoxDecoration(
//                         //     color: Colors.white,
//                         //     borderRadius: BorderRadius.circular(16),
//                         //   ),
//                         //   child: Row(
//                         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         //     children: [
//                         //       Row(
//                         //         children: [
//                         //           ClipRRect(
//                         //             borderRadius: BorderRadius.circular(12),
//                         //             child: Container(
//                         //               padding: EdgeInsets.all(16),
//                         //               color: Colors.orange,
//                         //               child: Icon(
//                         //                 Icons.book,
//                         //                 color: Colors.white,
//                         //               ),
//                         //             ),
//                         //           ),
//                         //           SizedBox(
//                         //             width: 12,
//                         //           ),
//                         //           Column(
//                         //             crossAxisAlignment:
//                         //                 CrossAxisAlignment.start,
//                         //             children: [
//                         //               //title
//                         //               Text(
//                         //                 'GTU Material',
//                         //                 style: TextStyle(
//                         //                   fontWeight: FontWeight.bold,
//                         //                   fontSize: 16,
//                         //                 ),
//                         //               )
//                         //             ],
//                         //           ),
//                         //         ],
//                         //       ),
//                         //       Icon(Icons.more_horiz),
//                         //     ],
//                         //   ),
//                         // ),

//                       ],
//                     ),
//                   ),
//                 ),
//               )

//               // SizedBox(
//               //   height: 25,
//               // ),
//             ],
//           ),
//         ));
//   }
// }










// import 'dart:async';
// import 'package:animated_toggle_switch/animated_toggle_switch.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_basics/forget_password.dart';
// import 'package:flutter_basics/screens/logoutscreen.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import 'package:flutter_basics/utils/helpers/helper_functions.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';


// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
 
//   int _selectedIndex = 0;
//   bool _isDarkMode = true;
//   TextEditingController searchController = TextEditingController();
//   List<Map<String, dynamic>> _searchResults = []; // Store search results
//   bool _searchInProgress = false; // Track search progress
//   int _hintTextIndex = 0;
//   final List<String> _hintTexts = ['Moong Dal', 'Ghee', 'Toothpest'];

//   @override
//   void initState() {
//     super.initState();
//     // Start the timer to change the hintText every 3 seconds

//     Timer.periodic(Duration(seconds: 6), (timer) {
//       setState(() {
//         _hintTextIndex = (_hintTextIndex + 1) % _hintTexts.length;
//       });
//     });
//   }

//   List<Widget> _widgetOptions = <Widget>[
//     // HomeContent(),
//     // AddProductScreen(),
//     // AddProductScreen(),
   
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   Future<void> _performSearch(String searchTerm) async {
//     setState(() {
//       _searchInProgress = true; // Indicate search in progress
//     });

//     try {
//       // Query Firestore for products matching the search term
//       QuerySnapshot<Map<String, dynamic>> querySnapshot =
//           await FirebaseFirestore.instance
//               .collection('products')
//               .where('productName', isGreaterThanOrEqualTo: searchTerm)
//               .where('productName', isLessThanOrEqualTo: searchTerm + '\uf8ff')
//               .get();

//       // Extract search results from the query snapshot
//       List<Map<String, dynamic>> searchResults = [];
//       querySnapshot.docs.forEach((doc) {
//         Map<String, dynamic> data = doc.data();
//         searchResults.add({
//           'product': data['productName'],
//           'brand': data['brandName'],
//           'image': data['productLogoUrl'],
//           'price': " ₹ " + data['price'].toString(),
//         });
//       });

//       setState(() {
//         _searchResults = searchResults; // Update search results
//       });
//     } catch (error) {
//       print('Error searching products: $error');
//       // Handle error here (e.g., show error message to user)
//     } finally {
//       setState(() {
//         _searchInProgress = false; // Indicate search completed
//       });
//     }
//   }

//   void _clearSearch() {
//     setState(() {
//       searchController.clear();
//       _searchResults.clear();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text('Jalaram kirana',style: TextStyle(color: THelperFunctions.isDarkMode(context)
//                     ? TColors.dark
//                     : TColors.light,fontSize: 20),),
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight + 8),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//             child: TextField(
//               enableInteractiveSelection: true,
//               cursorColor: THelperFunctions.isDarkMode(context)
//                         ? TColors.light
//                         : TColors.dark,
//               controller: searchController,
//               onChanged: (value) {
//                 _performSearch(value.trim());
//               },
//               decoration: InputDecoration(
//                 fillColor: THelperFunctions.isDarkMode(context)
//                     ? TColors.dark
//                     : TColors.light,
//                 filled: true,
//                 hintStyle: TextStyle(
//                     color: THelperFunctions.isDarkMode(context)
//                         ? TColors.light
//                         : TColors.dark),
//                 hintText: "Search for " + _hintTexts[_hintTextIndex],
//                 border: const OutlineInputBorder(),
//                 prefixIcon: IconButton(
//                   icon: Icon(Icons.search,
//                       color: THelperFunctions.isDarkMode(context)
//                           ? TColors.light
//                           : TColors.dark),
//                   onPressed: () {},
//                 ),
//                 suffixIcon: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.close,
//                           color: THelperFunctions.isDarkMode(context)
//                               ? TColors.light
//                               : TColors.dark),
//                       onPressed: _clearSearch,
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.list,
//                           color: THelperFunctions.isDarkMode(context)
//                               ? TColors.light
//                               : TColors.dark),
//                       onPressed: () {
//                         // Implement your logic for the settings icon onPressed event
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         clipBehavior: Clip.antiAlias,
//         elevation: 5,
//         backgroundColor: TColors.g2main,
//         centerTitle: true,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(10),
//           ),
//         ),
//       ),
//       drawer: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 25),
//         child: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               SizedBox(
//                 height: 250,
//                 child: DrawerHeader(
//                   decoration: const BoxDecoration(
//                     color: TColors.success,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundColor:
//                             _isDarkMode ? Colors.black54 : Colors.white54,
//                       ),
//                       const SizedBox(height: 10),
//                       const Text(
//                        'google user name',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Text(
//                         "google user ",
//                         style: TextStyle(
//                           fontSize: 14,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               ListTile(
//                 title: Row(
//                   children: [
//                     AnimatedToggleSwitch<bool>.dual(
//                       animationDuration: const Duration(milliseconds: 600),
//                       animationCurve: Curves.slowMiddle,
//                       iconAnimationCurve: Curves.linear,
//                       current: _isDarkMode,
//                       first: false,
//                       second: true,
//                       spacing: 30.0,
//                       height: 40,
//                       style: const ToggleStyle(
//                         borderColor: Colors.transparent,
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Colors.black26,
//                             spreadRadius: 1,
//                             blurRadius: 2,
//                             offset: Offset(0, 1.5),
//                           ),
//                         ],
//                       ),
//                       borderWidth: 2.0,
//                       onChanged: (value) {
//                         setState(() {
//                           _isDarkMode = value;
//                           if (_isDarkMode) {
//                             Get.changeThemeMode(ThemeMode.dark);
//                           } else {
//                             Get.changeThemeMode(ThemeMode.light);
//                           }
//                         });
//                       },
//                       styleBuilder: (b) => ToggleStyle(
//                           indicatorColor: b
//                               ? const Color.fromARGB(255, 0, 0, 0)
//                               : const Color.fromARGB(255, 0, 124, 156)),
//                       iconBuilder: (value) => value
//                           ? const Icon(
//                               Iconsax.moon5,
//                               color: Colors.white,
//                             )
//                           : const Icon(
//                               Icons.sunny,
//                               color: Color.fromARGB(255, 255, 191, 0),
//                             ),
//                       textBuilder: (value) => value
//                           ? const Center(child: Text('Light'))
//                           : const Center(child: Text('Dark')),
//                     ),
//                   ],
//                 ),
//               ),
//               ListTile(
//                 leading: const Icon(
//                   Icons.person,
//                   color: TColors.success,
//                 ),
//                 title: const Text(
//                   'Update Your Details',
//                   style: TextStyle(
//                     color: TColors.success,
//                   ),
//                 ),
//                 onTap: () {
//                   // Add onTap logic
//                 },
//               ),
//               ListTile(
//                 leading: const Icon(Icons.abc_rounded),
//                 title: const Text('Update Your Details'),
//                 onTap: () {
//                   Get.to(ForgetPassword());
//                   // Add onTap logic
//                 },
//               ),
//               ListTile(
//                 leading: const Icon(Icons.abc_rounded),
//                 title: const Text('Update Shop Details'),
//                 onTap: () {
//                   // Add onTap logic
//                 },
//               ),
//               ListTile(
//                 leading: const Icon(Icons.cached_rounded),
//                 title: const Text('Update Stock'),
//                 onTap: () {
//                   // Add onTap logic
//                 },
//               ),
//               ListTile(
//                 leading: const Icon(Iconsax.logout),
//                 title: const Text('Logout'),
//                 onTap: () {
//                   // Add onTap logic
//                   Get.to(const LogoutScreen());
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: _searchInProgress
//           ? const Center(child: CircularProgressIndicator())
//           : _searchResults.isEmpty
//               ? _widgetOptions.elementAt(_selectedIndex)
//               : ListView.builder(
//                   itemCount: _searchResults.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(
//                         _searchResults[index]['product'],
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       subtitle: Text(
//                         _searchResults[index]['brand'],
//                         style: const TextStyle(fontSize: 12),
//                       ),
//                       leading: Container(
//                         width: 80,
//                         height: 80,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             image: NetworkImage(_searchResults[index]['image']),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       trailing: Text(
//                         _searchResults[index]['price'.toString()],
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       onTap: () {
//                         // Handle tap on search result
//                       },
//                     );
//                   },
//                 ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Add Product',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.redeem),
//             label: 'Redeem Product',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: TColors.success,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }







import 'dart:async';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/ai_page.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/allsemesterscreen.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_1/semester_1_screen.dart';
import 'package:flutter_basics/screens/logoutscreen.dart';
import 'package:flutter_basics/screens/my_profile_screen.dart';
import 'package:flutter_basics/screens/privacypolicy.dart';
import 'package:flutter_basics/utils/constants/colors.dart';
import 'package:flutter_basics/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _isDarkMode = true;
  TextEditingController searchController = TextEditingController();
  // final apikey = 'AIzaSyAHUbdSY_DTDe8kkAlbT5syCWoG6XfQEM4';
  List<Map<String, dynamic>> _searchResults = [];
  bool _searchInProgress = false;
  int _hintTextIndex = 0;
  final List<String> _hintTexts = ['Gtu paper', 'Gtu material', 'Exam timetable'];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 6), (timer) {
      setState(() {
        _hintTextIndex = (_hintTextIndex + 1) % _hintTexts.length;
      });
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    // Add your widgets here
    Allsem(),
    ProfileScreen(),
    AiPage(),
    
    // LogoutScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _performSearch(String searchTerm) async {
    setState(() {
      _searchInProgress = true;
    });

    try {
      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await FirebaseFirestore.instance
              .collection('products')
              .where('productName', isGreaterThanOrEqualTo: searchTerm)
              .where('productName', isLessThanOrEqualTo: searchTerm + '\uf8ff')
              .get();

      List<Map<String, dynamic>> searchResults = [];
      querySnapshot.docs.forEach((doc) {
        Map<String, dynamic> data = doc.data();
        searchResults.add({
          'product': data['productName'],
          'brand': data['brandName'],
          'image': data['productLogoUrl'],
          'price': " ₹ " + data['price'].toString(),
        });
      });

      setState(() {
        _searchResults = searchResults;
      });
    } catch (error) {
      print('Error searching products: $error');
    } finally {
      setState(() {
        _searchInProgress = false;
      });
    }
  }

  void _clearSearch() {
    setState(() {
      searchController.clear();
      _searchResults.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Home',
          style: TextStyle(
            color: THelperFunctions.isDarkMode(context)
                ? TColors.dark
                : TColors.light,
            fontSize: 25,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: TextField(
              enableInteractiveSelection: true,
              cursorColor: THelperFunctions.isDarkMode(context)
                  ? TColors.light
                  : TColors.dark,
              controller: searchController,
              onChanged: (value) {
                _performSearch(value.trim());
              },
              decoration: InputDecoration(
                fillColor: THelperFunctions.isDarkMode(context)
                    ? TColors.dark
                    : TColors.light,
                filled: true,
                hintStyle: TextStyle(
                  color: THelperFunctions.isDarkMode(context)
                      ? TColors.light
                      : TColors.dark,
                ),
                hintText: "Search for " + _hintTexts[_hintTextIndex],
                border: const OutlineInputBorder(),
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: THelperFunctions.isDarkMode(context)
                        ? TColors.light
                        : TColors.dark,
                  ),
                  onPressed: () {},
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: THelperFunctions.isDarkMode(context)
                            ? TColors.light
                            : TColors.dark,
                      ),
                      onPressed: _clearSearch,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.list,
                        color: THelperFunctions.isDarkMode(context)
                            ? TColors.light
                            : TColors.dark,
                      ),
                      onPressed: () {
                        // Implement your logic for the settings icon onPressed event
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        backgroundColor: TColors.pmain,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      drawer: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 250,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: TColors.pmain,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor:
                            _isDarkMode ? Colors.black54 : Colors.white54,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'google user name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "google user ",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    AnimatedToggleSwitch<bool>.dual(
                      animationDuration: const Duration(milliseconds: 600),
                      animationCurve: Curves.slowMiddle,
                      iconAnimationCurve: Curves.linear,
                      current: _isDarkMode,
                      first: false,
                      second: true,
                      spacing: 30.0,
                      height: 40,
                      style: const ToggleStyle(
                        borderColor: Colors.transparent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1.5),
                          ),
                        ],
                      ),
                      borderWidth: 2.0,
                      onChanged: (value) {
                        setState(() {
                          _isDarkMode = value;
                          if (_isDarkMode) {
                            Get.changeThemeMode(ThemeMode.dark);
                          } else {
                            Get.changeThemeMode(ThemeMode.light);
                          }
                        });
                      },
                      styleBuilder: (b) => ToggleStyle(
                        indicatorColor: b
                            ? const Color.fromARGB(255, 0, 0, 0)
                            : const Color.fromARGB(255, 0, 124, 156),
                      ),
                      iconBuilder: (value) => value
                          ? const Icon(
                              Iconsax.moon5,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.sunny,
                              color: Color.fromARGB(255, 255, 191, 0),
                            ),
                      textBuilder: (value) => value
                          ? const Center(child: Text('Light'))
                          : const Center(child: Text('Dark')),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: TColors.success,
                ),
                title: const Text(
                  'Profile',
                  style: TextStyle(
                    color: TColors.success,
                  ),
                ),
                onTap: () {
                  Get.to(ProfileScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.reviews),
                title: const Text('Review'),
                onTap: () {
                  
                 Get.to(PrivacyPolicyPage());
                },
              ),
              ListTile(
                leading: const Icon(Icons.shield),
                title: const Text('Privacy policy'),
                onTap: () {
                  Get.to(PrivacyPolicyPage());
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () {
                  Get.to(PrivacyPolicyPage());
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_sharp),
                title: const Text('Logout'),
                onTap: () {
                  // Add onTap logic
                  Get.to(const LogoutScreen());
                },
              ),
            ],
          ),
        ),
      ),

      
      body: _searchInProgress
          ? const Center(child: CircularProgressIndicator())
          : _searchResults.isEmpty
              ? _widgetOptions.elementAt(_selectedIndex):
              ListView.builder(
  itemCount: _searchResults.length,
  itemBuilder: (context, index) {
    if (_searchResults.isEmpty) {
      return Center(child: Text("No search results found."));
    } else {
      return ListTile(
        title: Text(
          _searchResults[index]['product'] ?? '',
          style: const TextStyle(fontSize: 16),
        ),
        subtitle: Text(
          _searchResults[index]['brand'] ?? '',
          style: const TextStyle(fontSize: 12),
        ),
        leading: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(_searchResults[index]['image'] ?? ''),
              fit: BoxFit.cover,
            ),
          ),
        ),
        trailing: Text(
          _searchResults[index]['price'] ?? '',
          style: const TextStyle(fontSize: 16),
        ),
        onTap: () {
          // Handle tap on search result
        },
      );
    }
  },
),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_bolt_rounded),
            label: 'Learn with AI',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: TColors.pmain,
        onTap: _onItemTapped,
      ),


      
    );
  }
}




// : ListView.builder(
              //     itemCount: _searchResults.length,
              //     itemBuilder: (context, index) {
              //       return ListTile(
              //         title: Text(
              //           _searchResults[index]['product'],
              //           style: const TextStyle(fontSize: 16),
              //         ),
              //         subtitle: Text(
              //           _searchResults[index]['brand'],
              //           style: const TextStyle(fontSize: 12),
              //         ),
              //         leading: Container(
              //           width: 80,
              //           height: 80,
              //           decoration: BoxDecoration(
              //             shape: BoxShape.circle,
              //             image: DecorationImage(
              //               image: NetworkImage(_searchResults[index]['image']),
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ),
              //         trailing: Text(
              //           _searchResults[index]['price'].toString(), // Removed '.toString()' from here
              //           style: const TextStyle(fontSize: 16),
              //         ),
              //         onTap: () {
              //           // Handle tap on search result
              //         },
              //       );
              //     },
              //   ),