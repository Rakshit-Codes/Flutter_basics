import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/email_auth/login.dart';
import 'package:flutter_basics/utils/constants/colors.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:lottie/lottie.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: clearAllData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SizedBox(
                      width: Get.width,height: 500,
                      child: Lottie.asset(
                          'assets/logos/log out animation.json',
                          fit: BoxFit.contain),
                    ),
                  const SizedBox(height: 20),
                  const Text(
                    'Logging Out...',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
          );
        } else {
          // After data is cleared, navigate to LoginScreen
          return const Scaffold();
        }
      },
    );
  }

  Future<void> clearAllData() async {
    FirebaseAuth.instance.signOut();
    final storage = GetStorage();
    await storage.erase();
    Get.snackbar("Success", "Logout Successfully",
        colorText: Color.fromARGB(255, 0, 177, 115),
        backgroundColor: TColors.pmain);
    await Future.delayed(const Duration(seconds: 3)); // Wait for 2 seconds
    Get.offAll(() => LoginScreen());
  }
}
