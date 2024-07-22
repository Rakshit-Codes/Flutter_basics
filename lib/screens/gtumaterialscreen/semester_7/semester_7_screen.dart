// import 'package:flutter/material.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Semester7Screen extends StatefulWidget {
//   const Semester7Screen({super.key});

//   @override
//   State<Semester7Screen> createState() => _Semester7ScreenState();
// }

// class _Semester7ScreenState extends State<Semester7Screen> {
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
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Center(
//                   child: Text(
//                     "Semester 7",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 GestureDetector(
//                   onTap: () async {

//                     const Link =
//                         ("https://www.geeksforgeeks.org/introduction-of-compiler-design/");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 100,
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
//                             Icons.safety_check,
//                             size: 28,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3170701 - Compiler Design",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black87,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () async {

//                     const Link =
//                         ("https://www.geeksforgeeks.org/wireless-mobile-computing-technologies/");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 100,
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
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3170710 - Mobile Computing and Wireless communication",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black87,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () async {

//                     const Link =
//                         ("https://www.geeksforgeeks.org/artificial-intelligence-an-introduction/");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 100,
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
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3170716 - Artificial Intelligence",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black87,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () async {

//                     const Link =
//                         ("https://www.geeksforgeeks.org/what-is-a-distributed-system/");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 100,
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
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3170719 - Distributed System",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black87,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                  onTap: () async {

//                     const Link =
//                         ("https://www.geeksforgeeks.org/what-is-big-data-analytics/");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 100,
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
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3170722 - Big Data Analytics",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black87,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () async {

//                     const Link =
//                         ("https://www.geeksforgeeks.org/introduction-of-mobile-applications/");

//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 100,
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
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3170726 - Mobile Application Development",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.black87,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
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
import 'package:flutter_basics/utils/constants/colors.dart';
import 'package:flutter_basics/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';

class Semester7Screen extends StatefulWidget {
  const Semester7Screen({Key? key}) : super(key: key);

  @override
  State<Semester7Screen> createState() => _Semester7ScreenState();
}

class _Semester7ScreenState extends State<Semester7Screen> {
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Semester 7",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () async {
                    const Link =
                        ("https://www.geeksforgeeks.org/introduction-of-compiler-design/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain, // Primary Color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.engineering,
                            size: 28,
                            color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark, // Accent Color
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              "3170701 - Compiler Design",
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    const Link =
                        ("https://www.geeksforgeeks.org/wireless-mobile-computing-technologies/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain, // Primary Color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.phone_android,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark, // Accent Color
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              "3170710 - Mobile Computing and Wireless communication",
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    const Link =
                        ("https://www.geeksforgeeks.org/artificial-intelligence-an-introduction/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain, // Primary Color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:  Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.lightbulb,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark, // Accent Color
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              "3170716 - Artificial Intelligence",
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    const Link =
                        ("https://www.geeksforgeeks.org/what-is-a-distributed-system/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain, // Primary Color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.cloud,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark, // Accent Color
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              "3170719 - Distributed System",
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    const Link =
                        ("https://www.geeksforgeeks.org/what-is-big-data-analytics/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain, // Primary Color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.storage,
                            size: 28,
                            color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark, // Accent Color
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              "3170722 - Big Data Analytics",
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    const Link =
                        ("https://www.geeksforgeeks.org/introduction-of-mobile-applications/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: TColors.pmain, // Primary Color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.mobile_friendly,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark, // Accent Color
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              "3170726 - Mobile Application Development",
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
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

