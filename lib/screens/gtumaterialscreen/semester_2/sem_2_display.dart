// import 'package:flutter/material.dart';
// import 'package:flutter_basics/screens/facultydetailscreen.dart';
// import 'package:flutter_basics/screens/gtumaterialscreen/semester_2/semester_2_screen.dart';
// import 'package:flutter_basics/screens/gtupaper.dart';
// import 'package:flutter_basics/screens/noticeboard.dart';
// import 'package:flutter_basics/screens/timetable.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:flutter_basics/utils/helpers/helper_functions.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_basics/utils/helpers/helper_functions.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import '../../../utils/helpers/helper_functions.dart';

// class Sem2Display extends StatefulWidget {
//   const Sem2Display({super.key});

//   @override
//   State<Sem2Display> createState() => _Sem2DisplayState();
// }

// class _Sem2DisplayState extends State<Sem2Display> {
//   @override
//   Future<void> _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: SingleChildScrollView(
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.center,
//               // crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Semester 2',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Get.to(Semester2Screen());
//                     // Navigate to the desired screen here
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: TColors.pmain,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.6),
//                           spreadRadius: 1,
//                           blurRadius: 3,
//                           offset:
//                               const Offset(0, 2), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Icon(
//                             Icons.folder_outlined,
//                             size: 28,
//                             color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "GTU Material ",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Get.to(NoticeBoard());
//                     // Navigate to the desired screen here
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: TColors.pmain,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.6),
//                           spreadRadius: 1,
//                           blurRadius: 3,
//                           offset:
//                               const Offset(0, 2), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Icon(
//                             Icons.book,
//                             size: 28,
//                             color: THelperFunctions.isDarkMode(context)
//                                 ? TColors.light
//                                 : TColors.dark,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               " Notice Board",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 GestureDetector(
//                   onTap: () async {
//                     const Link =
//                         ("https://syllabus.gtu.ac.in/Syllabus.aspx?tp=DI");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: TColors.pmain,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.6),
//                           spreadRadius: 1,
//                           blurRadius: 3,
//                           offset:
//                               const Offset(0, 2), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Icon(
//                             Icons.book,
//                             size: 28,
//                             color: THelperFunctions.isDarkMode(context)
//                                 ? TColors.light
//                                 : TColors.dark,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "GTU Syllabus",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 GestureDetector(
//                   onTap: () async {
//                     const Link =
//                         ("https://www.gtupaper.in/engineering/31/Computer-science-engineering/sem2");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: TColors.pmain,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.6),
//                           spreadRadius: 1,
//                           blurRadius: 3,
//                           offset:
//                               const Offset(0, 2), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Icon(
//                             Iconsax.book,
//                             size: 28,
//                             color: THelperFunctions.isDarkMode(context)
//                                 ? TColors.light
//                                 : TColors.dark,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "GTU Paper ",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Get.to(FacultyScreen());
//                     // Navigate to the desired screen here
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: TColors.pmain,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.6),
//                           spreadRadius: 1,
//                           blurRadius: 3,
//                           offset:
//                               const Offset(0, 2), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Icon(
//                             Icons.book,
//                             size: 28,
//                             color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "Faculty Details",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/facultydetailscreen.dart';
import 'package:flutter_basics/screens/gtumaterialscreen/semester_2/semester_2_screen.dart';
import 'package:flutter_basics/screens/gtupaper.dart';
import 'package:flutter_basics/screens/noticeboard.dart';
import 'package:flutter_basics/screens/timetable.dart';
import 'package:flutter_basics/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_basics/utils/helpers/helper_functions.dart';

class Sem2Display extends StatefulWidget {
  const Sem2Display({super.key});

  @override
  State<Sem2Display> createState() => _Sem2DisplayState();
}

class _Sem2DisplayState extends State<Sem2Display> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Semester 2',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Semester2Screen());
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.folder_outlined,
                            size: 28,
                            color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              "GTU Material ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(NoticeBoard());
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.notifications_active_outlined,
                            size: 28,
                           color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              " Notice Board",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () async {
                    const link = "https://syllabus.gtu.ac.in/Syllabus.aspx?tp=DI";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Iconsax.book,
                            size: 28,
                            color: THelperFunctions.isDarkMode(context)
                                ? TColors.light
                                : TColors.dark,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              "GTU Syllabus",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () async {
                    const link = "https://www.gtupaper.in/engineering/31/Computer-science-engineering/sem2";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Iconsax.book,
                            size: 28,
                            color: THelperFunctions.isDarkMode(context)
                                ? TColors.light
                                : TColors.dark,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              "GTU Paper ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(FacultyScreen());
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.book,
                            size: 28,
                            color: THelperFunctions.isDarkMode(context)
                                ? TColors.light
                                : TColors.dark,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              "Faculty Details",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
