// import 'package:flutter/material.dart';
// import 'package:flutter_basics/utils/constants/colors.dart';
// import 'package:flutter_basics/utils/helpers/helper_functions.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Semester1screen extends StatefulWidget {
//   const Semester1screen({super.key});

//   @override
//   State<Semester1screen> createState() => _Semester1screenState();
// }

// class _Semester1screenState extends State<Semester1screen> {
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
//           padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Center(
//                   child: Text(
//                     "Semester 1",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 GestureDetector(
//                   onTap: () async {
//                     // launcher.launchUrl(url.parse('https://flutter.dev'));
//                     // _launchURL('https://flutter.dev');
//                     // final Url = "http://info.cern.ch";
//                     // openBrowserURL(url: url, inAPP: true);
//                     // _launchURL('https://flutter.dev');

//                     const Link =
//                         ("https://www.sparkfun.com/engineering_essentials");

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
//                             color: THelperFunctions.isDarkMode(context)
//                                 ? TColors.light
//                                 : TColors.dark,
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
//                     // Get.to(Semester2Screen());
//                     // Navigate to the desired screen here
//                     const Link = ("Environmental Science");
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
//                             color: THelperFunctions.isDarkMode(context)
//                                 ? TColors.light
//                                 : TColors.dark,
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
//                     // Get.to(Semester3Screen());
//                     // Navigate to the desired screen here
//                     const Link =
//                         ("https://lntedutech.com/engineering-graphics-and-design/");

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
// color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,                          ),
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
//                     // Get.to(Semester4Screen());
//                     // Navigate to the desired screen here
//                     const Link =
//                         ("https://www.gtuapymaterials.com/p/maths-i.html");

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
// color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,                          ),
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
//                     // Get.to(Semester5Screen());
//                     // Navigate to the desired screen here
//                     const Link =
//                         ("https://sites.google.com/sal.edu.in/pps/Home/material");

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
// color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,                          ),
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
//                     // Get.to(Semester6Screen());
//                     // Navigate to the desired screen here
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
//                             color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
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
//                     // Get.to(Semester7Screen());
//                     // Navigate to the desired screen here
//                     const Link = ("https://www.khanacademy.org/math/math2");

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
//                             color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
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
//                     // Get.to(Semester8Screen());
//                     // Navigate to the desired screen here
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
//                             color: THelperFunctions.isDarkMode(context)
//                                     ? TColors.light
//                                     : TColors.dark,
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
//                     // Get.to(Semester8Screen());
//                     // Navigate to the desired screen here
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
//                     child:  Padding(
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
//                                     ? TColors.light
//                                     : TColors.dark,
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

class Semester1screen extends StatefulWidget {
  const Semester1screen({super.key});

  @override
  State<Semester1screen> createState() => _Semester1screenState();
}

class _Semester1screenState extends State<Semester1screen> {
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
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Semester 1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () async {
                    const link = "https://www.sparkfun.com/engineering_essentials";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.book,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://flutter.dev";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.eco,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://lntedutech.com/engineering-graphics-and-design/";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.design_services,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://www.gtuapymaterials.com/p/maths-i.html";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.calculate,
                            size: 28,
                            color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://sites.google.com/sal.edu.in/pps/Home/material";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.computer,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://www.eit.edu.au/resources/fundamentals-of-mechanical-engineering/";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.engineering,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://www.khanacademy.org/math/math2";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                            Icons.calculate,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://www.tutorialspoint.com/basic_electronics/index.htm";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.electrical_services,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    const link = "https://www.khanacademy.org/science/physics";
                    launchUrl(Uri.parse(link), mode: LaunchMode.inAppWebView);
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
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child:  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.science,
                            size: 28,
                             color: THelperFunctions.isDarkMode(context)
                                    ? TColors.light
                                    : TColors.dark,
                          ),
                          SizedBox(width: 20),
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
