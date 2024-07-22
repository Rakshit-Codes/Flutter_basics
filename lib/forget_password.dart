// import 'package:flutter_basics/uihelper.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';


// class ForgetPassword extends StatelessWidget {
//   const ForgetPassword({Key? key});

//   void forgetPassword(BuildContext context, String email) async {
//     if (email.isEmpty) {
//       DUI.CustomAlertBox(context, "Enter an email to reset password");
//     } else {
//       try {
//         await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
//       } on FirebaseAuthException catch (e) {
//         DUI.CustomAlertBox(context, e.code.toString());
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController emailController = TextEditingController();

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DUI.CustomTextField(emailController, "Email Address", Icons.mail, false),
//             const SizedBox(
//               height: 20,
//             ),
//             DUI.CustomButton(() {
//               forgetPassword(context, emailController.text.toString());
//             }, "Reset Password")
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter_basics/email_auth/login.dart';
import 'package:flutter_basics/uihelper.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key});

  void forgetPassword(BuildContext context, String email) async {
    if (email.isEmpty) {
      DUI.CustomAlertBox(context, "Enter an email to reset password");
    } else {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        Get.snackbar("Success", "Email sent Successfully . . !",
              colorText: Colors.green, backgroundColor: Colors.black);
        Get.to(LoginScreen());

      } on FirebaseAuthException catch (e) {
        DUI.CustomAlertBox(context, e.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
           SizedBox(
            child: Lottie.asset('assets/logos/forget password animation.json',fit:BoxFit.cover)),
              
            DUI.CustomTextField(emailController, "Email Address", Icons.mail, false),
            const SizedBox(
              height: 20,
            ),
            DUI.CustomButton(() {
              forgetPassword(context, emailController.text.toString());
            }, "Reset Password")
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class ForgetPassword extends StatefulWidget {
//   const ForgetPassword({super.key});

//   @override
//   State<ForgetPassword> createState() => _ForgetPasswordState();
// }

// class _ForgetPasswordState extends State<ForgetPassword> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Lottie.asset('assets/logos/Logout.json'),
//         ],
//       ),
//     );
//   }
// }