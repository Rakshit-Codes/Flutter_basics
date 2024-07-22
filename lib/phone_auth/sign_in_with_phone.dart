
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/phone_auth/verify_otp.dart';
// import 'package:flutter_basics/phone_auth/verify_otp.dart';
import 'package:get/get.dart';

class SignInWithPhone extends StatefulWidget {
  const SignInWithPhone({Key? key}) : super(key: key);

  @override
  State<SignInWithPhone> createState() => _SignInWithPhoneState();
}

class _SignInWithPhoneState extends State<SignInWithPhone> {
  TextEditingController phoneController = TextEditingController();
  String? verificationId;

  void sendOTP() async {
    String phone = "+91" + phoneController.text.trim();
    if (phone == "") {
      Get.snackbar("Error", "Please enter required fields");
    } else {
      try {
        await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: phone,
          codeSent: (String verificationID, int? resendToken) {
            setState(() {
              this.verificationId = verificationID;
            });
          },
          verificationCompleted: (PhoneAuthCredential credential) {},
          verificationFailed: (FirebaseAuthException ex) {
            Get.snackbar("Error", ex.message!);
          },
          codeAutoRetrievalTimeout: (String verificationID) {},
          timeout: const Duration(seconds: 120),
        );
      } catch (e) {
        Get.snackbar("Error", e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                'Sign in with phone no',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: phoneController,
              maxLength: 10,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "enter phone number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  sendOTP();
                  if (verificationId != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyOtpScreen(
                          verificationID: verificationId!,
                        ),
                      ),
                    );
                  }
                },
                child: const Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
















// void verifyOtp(
//       BuildContext context, TextEditingController otpController) async {
//     String otp = otpController.text.trim();
//     PhoneAuthCredential phoneCredential = PhoneAuthProvider.credential(
//         verificationId: verificationId, smsCode: otp);
//     try {
//       UserCredential userCredential =
//           await FirebaseAuth.instance.signInWithCredential(phoneCredential);

//       if (userCredential.user != null) {
//         Get.off(() => HomeScreen());
//         Get.snackbar("S u c c e s s", "login Successfully...",
//             colorText: Color.fromRGBO(76, 164, 0, 1),
//             backgroundColor: Color.fromARGB(188, 0, 0, 0));
//       }
//     } on FirebaseAuthException catch (ex) {
//       DUI.CustomAlertBox(context, ex.code.toString());
//     }
//   }













// onPressed: () {
//   sendOTP();
//   var verificationID; // This variable is not initialized
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => VerifyOtpScreen(
//         verificationID: verificationID, // Passing null here
//       ),
//     ),
//   );
// },