import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/home_screen.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String verificationID;
  const VerifyOtpScreen({Key? key, required this.verificationID}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtpScreen> {
  TextEditingController otpcontroller = TextEditingController();
  void veriftOTP() async {
    String otp = otpcontroller.text.trim();
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationID, smsCode: otp);

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (userCredential.user != null) {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => HomeScreen()));
      }
    } on FirebaseAuthException catch (ex) {
      log(ex.code.toString() as num);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Sign in with phone no',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              maxLength: 6,
              controller: otpcontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "enter Otp",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    veriftOTP();
                  },
                  child: const Text("Verify")),
            ),
          ],
        ),
      ),
    );
  }
}
