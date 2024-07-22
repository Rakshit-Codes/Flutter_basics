// import 'package:flutter/material.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Semester2Screen extends StatefulWidget {
//   const Semester2Screen({super.key});

//   @override
//   State<Semester2Screen> createState() => _Semester2ScreenState();
// }

// class _Semester2ScreenState extends State<Semester2Screen> {
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
//                     "Semester 2",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     const Link =
//                         ("https://www.geeksforgeeks.org/electrical-engineering/");
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
//                             Icons.electric_bolt_outlined,
//                             size: 28,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3110005 - Basic Electrical Engineering",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.geeksforgeeks.org/environmental-pollution/");
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
//                             Icons.eco,
//                             size: 28,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: Text(
//                               "3110007 - Environmental Science",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.researchgate.net/publication/331087276_Engineering_Graphics_and_Design");
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
//                               "3110013 - Engineering Graphics & Design",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.khanacademy.org/math/math1");
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
//                               "3110014 - Mathematics-I",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.geeksforgeeks.org/c-programming-examples/");
//                     launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
//                   },
//                   child: Container(
//                     width: Get.width * 0.90,
//                     height: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                      color: TColors.pmain,
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
//                               "3110003 - Programming for Problem Solving",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.eit.edu.au/resources/fundamentals-of-mechanical-engineering/");
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
//                               "3110006 - Basic Mechanical Engineering",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.khanacademy.org/math/math2");
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
//                               "3110015 - Mathematics-II",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.tutorialspoint.com/basic_electronics/index.htm");
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
//                               "3110016 - Basic Electronics",
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
//                   onTap: () {
//                     const Link =
//                         ("https://www.khanacademy.org/science/physics");
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
//                               "3110018 - Physics Group - II",
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
import 'package:url_launcher/url_launcher.dart';

class Semester2Screen extends StatefulWidget {
  const Semester2Screen({super.key});

  @override
  State<Semester2Screen> createState() => _Semester2ScreenState();
}

class _Semester2ScreenState extends State<Semester2Screen> {
  @override
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Semester 2",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.geeksforgeeks.org/electrical-engineering/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.electrical_services,
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
                              "3110005 - Basic Electrical Engineering",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.geeksforgeeks.org/environmental-pollution/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.eco,
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
                              "3110007 - Environmental Science",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.researchgate.net/publication/331087276_Engineering_Graphics_and_Design");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.design_services,
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
                              "3110013 - Engineering Graphics & Design",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link = ("https://www.khanacademy.org/math/math1");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.calculate,
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
                              "3110014 - Mathematics-I",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.geeksforgeeks.org/c-programming-examples/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.code,
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
                              "3110003 - Programming for Problem Solving",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.eit.edu.au/resources/fundamentals-of-mechanical-engineering/");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.engineering,
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
                              "3110006 - Basic Mechanical Engineering",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link = ("https://www.khanacademy.org/math/math2");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.calculate,
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
                              "3110015 - Mathematics-II",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.tutorialspoint.com/basic_electronics/index.htm");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.memory,
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
                              "3110016 - Basic Electronics",
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
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.khanacademy.org/science/physics");
                    launchUrl(Uri.parse(Link), mode: LaunchMode.inAppWebView);
                  },
                  child: Container(
                    width: Get.width * 0.90,
                    height: 100,
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
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.science,
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
                              "3110018 - Physics Group - II",
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
