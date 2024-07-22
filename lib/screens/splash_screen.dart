import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/email_auth/login.dart';
import 'package:flutter_basics/screens/home_screen.dart';
import 'package:flutter_basics/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
  // static const Color primary = Color(0xFF6c5b7b);
  // static const Color primary2 = Color.fromARGB(255, 214, 75, 33);
}

class _SplashScreenState extends State<SplashScreen> {
 
  static const String keylogin = "login";

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 2), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => LoginScreen()),
  //     );
  //   });
  // }

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
    whereToGo();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void whereToGo() async {
    var sharedPref = GetStorage();
    await sharedPref.initStorage;
    var isLogin = sharedPref.read(keylogin);

    debugPrint("""Let's print the bool values\n
    1) Is login: $isLogin\n""");

    Timer(
      const Duration(seconds: 3),
      () {
        if (FirebaseAuth.instance.currentUser != null) {
          Get.offAll(() => HomeScreen());
        } else {
          // Check if isLogin is not null and is true
          if (isLogin != null && isLogin) {
            Get.offAll(() => HomeScreen());
          } else {
            Get.offAll(() => LoginScreen());
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: TColors.pmain,
        child: Center(child: Image.asset('assets/logos/sslogo.png')),
      ),
    );
  }
}
