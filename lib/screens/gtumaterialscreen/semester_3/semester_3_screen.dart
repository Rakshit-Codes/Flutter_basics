import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/constants/colors.dart';
import 'package:flutter_basics/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';

class Semester3Screen extends StatefulWidget {
  const Semester3Screen({super.key});

  @override
  State<Semester3Screen> createState() => _Semester3ScreenState();
}

class _Semester3ScreenState extends State<Semester3Screen> {
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
                    "Semester 3",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    const Link =
                        ("https://www.geeksforgeeks.org/what-is-communication/");
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
                          offset:
                              const Offset(0, 2), // changes position of shadow
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
                            Icons.mic,
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
                              "3130004 - Effective Technical Communication",
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
                        ("https://www.geeksforgeeks.org/probability-and-statistics/");
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
                          offset:
                              const Offset(0, 2), // changes position of shadow
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
                            Icons.bar_chart,
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
                              "3130006 - Probability and Statistics",
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
                        ("https://legislative.gov.in/constitution-of-india/");
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
                          offset:
                              const Offset(0, 2), // changes position of shadow
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
                           Icons.gavel,
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
                              "3130007 - Indian Constitution",
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
                        ("https://www.w3schools.com/dsa/dsa_intro.php");
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
                          offset:
                              const Offset(0, 2), // changes position of shadow
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
                            Icons.storage,
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
                              "3130702 - Data Structures",
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
                        ("https://www.geeksforgeeks.org/introduction-of-dbms-database-management-system-set-1/");
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
                          offset:
                              const Offset(0, 2), // changes position of shadow
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
                           Icons.data_usage,
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
                              "3130703 - Database Management Systems",
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
                        ("https://www.geeksforgeeks.org/digital-electronics-logic-design-tutorials/");
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
                          offset:
                              const Offset(0, 2), // changes position of shadow
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
                              "3130704 - Digital Fundamentals",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
