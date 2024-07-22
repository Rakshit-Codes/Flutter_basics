// my code 

// import 'dart:developer';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController cpasswordController = TextEditingController();

//   void createAccount() async {
//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();
//     String cpassword = cpasswordController.text.trim();

//     if(email == "" || password == "" || cpassword == "" ){
//       log("please fill all the details!");
//     }
//     else if (password != cpassword){
//       log("Passwords do not match!");
//     }
//     else{
//       try{
//         UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
//         if(userCredential.user != null){
//           Navigator.pop(context);
//         }
//       } on FirebaseAuthException catch(ex){
//         log(ex.code.toString());
//       }
//     }
//   } 



//   // void show() {
//   //   log(emailController.toString());
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Signup'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 18),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 25,
//             ),
//             Center(
//               child: Text(
//                 'Join studentline',
//                 style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.amber,
//                     fontWeight: FontWeight.w500),
//               ),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             TextField(
//               keyboardType: TextInputType.emailAddress,
//               controller: emailController,
//               decoration: InputDecoration(
//                   hintText: "Email Address",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             TextField(
//               // obscuringCharacter: "*",
//               obscureText: true,
//               keyboardType: TextInputType.emailAddress,
//               controller: passwordController,
//               decoration: InputDecoration(
                
//                 suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.password)),
//                   hintText: "Password",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             TextField(
//               // obscuringCharacter: "*",
//               obscureText: true,
//               keyboardType: TextInputType.emailAddress,
//               controller: cpasswordController,
//               decoration: InputDecoration(
//                 suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.password)),
//                   hintText: "Confirm Password",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10))),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   // show();
//                   createAccount();
//                 },
//                 child: Text('Create Account'))
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_basics/uihelper.dart';
import 'package:lottie/lottie.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RxBool obscurePassword = true.obs;
  RxBool obscureConfirmPassword = true.obs;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  Future<void> signup() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      DUI.CustomAlertBox(Get.context!, "Please enter required fields");
    } else if (password != confirmPassword) {
      DUI.CustomAlertBox(Get.context!, "Passwords do not match");
      
    } else {
      try {
        final UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        Get.offAll(() => HomeScreen());
        print('User signed up: ${userCredential.user!.email}');
      } on FirebaseAuthException catch (e) {
        DUI.CustomAlertBox(Get.context!, e.code.toString());
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print('Error: $e');
      }
    }
  }
}

class SignupScreen extends StatelessWidget {
  final SignupController _signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Signup'),
      // ),


      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: [
            SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset('assets/logos/login animation 2.json'),
                ),
            SizedBox(height: 20),
            TextField(
              controller: _signupController.emailController,
              decoration: const InputDecoration(labelText: 'Email Address'),
            ),
            const SizedBox(height: 20),
            Obx(() => TextField(
                  controller: _signupController.passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _signupController.obscurePassword.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        _signupController.obscurePassword.toggle();
                      },
                    ),
                  ),
                  obscureText: _signupController.obscurePassword.value,
                )),
            const SizedBox(height: 20),
            Obx(() => TextField(
                  controller: _signupController.confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _signupController.obscureConfirmPassword.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        _signupController.obscureConfirmPassword.toggle();
                      },
                    ),
                  ),
                  obscureText: _signupController.obscureConfirmPassword.value,
                )),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: AnimatedButton(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
                borderRadius: 12,
                selectedTextColor: Colors.green,
                selectedBackgroundColor: const Color.fromARGB(255, 52, 52, 52),
                onPress: _signupController.signup,
                text: "Sign Up",
              ),
            ),
          ],
        ),
      ),
    );
  }
}







// import 'package:connectivity/connectivity.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_basics/forget_password.dart';
// import 'package:flutter_basics/screens/home_screen.dart';
// import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// import 'package:flutter_basics/email_auth/signup.dart';
// import 'package:flutter_basics/phone_auth/sign_in_with_phone.dart';

// class LoginController extends GetxController {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   RxBool obscurePassword = true.obs;
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   final Connectivity _connectivity = Connectivity();

//   @override
//   void onInit() {
//     super.onInit();
//     _checkInternetConnection();
//   }

//   Future<void> _checkInternetConnection() async {
//     var connectivityResult = await _connectivity.checkConnectivity();
//     if (connectivityResult == ConnectivityResult.none) {
//       Get.snackbar("No Internet", "Please check your internet connection",
//           colorText: Colors.red, backgroundColor: Colors.black);
//     }
//   }

//   void login() async {
//     var connectivityResult = await _connectivity.checkConnectivity();
//     if (connectivityResult == ConnectivityResult.none) {
//       Get.snackbar("No Internet", "Please check your internet connection",
//           colorText: Colors.red, backgroundColor: Colors.black);
//       return;
//     }

//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();
//     if (email.isEmpty || password.isEmpty) {
//       Get.snackbar("Error", "Please enter required fields",
//           colorText: Colors.red, backgroundColor: Colors.black);
//     } else {
//       try {
//         UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//             email: email, password: password);
//         if (userCredential.user != null) {
//           Get.offAll(() =>  HomeScreen());
//           Get.snackbar("Success", "Login Successful",
//               colorText: Colors.green, backgroundColor: Colors.black);
//         }
//       } on FirebaseAuthException catch (ex) {
//         Get.snackbar("Error", ex.message!,
//             colorText: Colors.red, backgroundColor: Colors.black);
//       }
//     }
//   }

//   Future<void> handleSignIn() async {
//     try {
//       await googleSignIn.signOut(); // Ensure previous session is cleared
//       GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         GoogleSignInAuthentication googleAuth =
//             await googleSignInAccount.authentication;
//         AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleAuth.accessToken,
//           idToken: googleAuth.idToken,
//         );

//         UserCredential authResult =
//             await _auth.signInWithCredential(credential);

//         if (authResult.user != null) {
//           Get.offAll(() =>  HomeScreen());
//           Get.snackbar("Success", "Google Sign-in Successful",
//               colorText: Colors.green, backgroundColor: Colors.black);
//         }
//       }
//     } catch (error) {
//       print(error);
//       Get.snackbar("Error", "An error occurred",
//           colorText: Colors.red, backgroundColor: Colors.black);
//     }
//   }

//   Future<void> signOutGoogle() async {
//     await googleSignIn.signOut();
//     print("User signed out from Google account");
//   }

//   void goToSignUp() {
//     Get.to(() => SignupScreen());
//   }

//   // void goToPhoneSignIn() {
//   //   Get.to(() => const PhoneSigninScreen());
//   // }
// }

// class LoginScreen extends StatelessWidget {
//   final LoginController _loginController = Get.put(LoginController());

//   LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: const Text('Login'),
//       ),
//       body: SafeArea(
//         child: ListView(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           children: [
//             const SizedBox(height: 25),
//             TextField(
//               controller: _loginController.emailController,
//               decoration: const InputDecoration(labelText: "Email Address"),
//             ),
//             const SizedBox(height: 15),
//             Obx(
//               () => TextField(
//                 controller: _loginController.passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _loginController.obscurePassword.value
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                     onPressed: () {
//                       _loginController.obscurePassword.toggle();
//                     },
//                   ),
//                 ),
//                 obscureText: _loginController.obscurePassword.value,
//               ),
//             ),
//             const SizedBox(height: 30),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: _loginController.login,
//                 child: const Text('Login'),
//               ),
//             ),
//             const SizedBox(height: 5),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Get.to(() => const ForgetPassword());
//                   },
//                   child: const Text(
//                     'Forgot password ?',
//                     style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),fontSize: 14),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: _loginController.goToSignUp,
//                   child: const Text(
//                     'Create Account',
//                     style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),fontSize: 14),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 50),
//             const Row(
//               children: [
//                 Expanded(
//                   child: Divider(),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Text(
//                     'Or sign in with',
//                   ),
//                 ),
//                 Expanded(
//                   child: Divider(),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//             // IconButton(
//             //   iconSize: 30,
//             //   color: Color.fromARGB(255, 0, 168, 206),
//             //   onPressed: _loginController.goToPhoneSignIn,
//             //   icon: const Icon(Icons.call),
//             // ),
//             Container(
//               width: 250,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius:
//                     BorderRadius.circular(15), // Adjust the radius as needed
//               ),
//               child: TextButton.icon(
//                 onPressed: _loginController.handleSignIn,
//                 icon: const Image(
//                   image: AssetImage('assets/logos/google-icon.png'),
//                   height: 30.0,
//                   width: 30.0,
//                 ),
//                 label: const Text(
//                   'Continue with Google',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }











// import 'package:connectivity/connectivity.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_basics/forget_password.dart';
// import 'package:flutter_basics/screens/home_screen.dart';
// import 'package:flutter_basics/email_auth/signup.dart';
// import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';



// class LoginController extends GetxController {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   RxBool obscurePassword = true.obs;
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   final Connectivity _connectivity = Connectivity();

//   @override
//   void onInit() {
//     super.onInit();
//     _checkInternetConnection();
//   }

//   Future<void> _checkInternetConnection() async {
//     var connectivityResult = await _connectivity.checkConnectivity();
//     if (connectivityResult == ConnectivityResult.none) {
//       Get.snackbar("No Internet", "Please check your internet connection",
//           colorText: Colors.red, backgroundColor: Colors.black);
//     }
//   }

//   void login() async {
//     var connectivityResult = await _connectivity.checkConnectivity();
//     if (connectivityResult == ConnectivityResult.none) {
//       Get.snackbar("No Internet", "Please check your internet connection",
//           colorText: Colors.red, backgroundColor: Colors.black);
//       return;
//     }

//     String email = emailController.text.trim();
//     String password = passwordController.text.trim();
//     if (email.isEmpty || password.isEmpty) {
//       Get.snackbar("Error", "Please enter required fields",
//           colorText: Colors.red, backgroundColor: Colors.black);
//     } else {
//       try {
//         UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//             email: email, password: password);
//         if (userCredential.user != null) {
//           Get.offAll(() =>  HomeScreen());
//           Get.snackbar("Success", "Login Successful",
//               colorText: Colors.green, backgroundColor: Colors.black);
//         }
//       } on FirebaseAuthException catch (ex) {
//         Get.snackbar("Error", ex.message!,
//             colorText: Colors.red, backgroundColor: Colors.black);
//       }
//     }
//   }

//   Future<void> handleSignIn() async {
//     try {
//       await googleSignIn.signOut(); // Ensure previous session is cleared
//       GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         GoogleSignInAuthentication googleAuth =
//             await googleSignInAccount.authentication;
//         AuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleAuth.accessToken,
//           idToken: googleAuth.idToken,
//         );

//         UserCredential authResult =
//             await _auth.signInWithCredential(credential);

//         if (authResult.user != null) {
//           Get.offAll(() =>  HomeScreen());
//           Get.snackbar("Success", "Google Sign-in Successful",
//               colorText: Colors.green, backgroundColor: Colors.black);
//         }
//       }
//     } catch (error) {
//       print(error);
//       Get.snackbar("Error", "An error occurred",
//           colorText: Colors.red, backgroundColor: Colors.black);
//     }
//   }

//   Future<void> signOutGoogle() async {
//     await googleSignIn.signOut();
//     print("User signed out from Google account");
//   }

//   void goToSignUp() {
//     Get.to(() => SignupScreen());
//   }

  
// }

// class LoginScreen extends StatelessWidget {
//   final LoginController _loginController = Get.put(LoginController());

//   LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: const Text('Login'),
//       ),
//       body: SafeArea(
//         child: ListView(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           children: [
//             const SizedBox(height: 25),
//             TextField(
//               controller: _loginController.emailController,
//               decoration: const InputDecoration(labelText: "Email Address"),
//             ),
//             const SizedBox(height: 15),
//             Obx(
//               () => TextField(
//                 controller: _loginController.passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   suffixIcon: IconButton(
//                     icon: Icon(
//                       _loginController.obscurePassword.value
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                     onPressed: () {
//                       _loginController.obscurePassword.toggle();
//                     },
//                   ),
//                 ),
//                 obscureText: _loginController.obscurePassword.value,
//               ),
//             ),
//             const SizedBox(height: 30),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: _loginController.login,
//                 child: const Text('Login'),
//               ),
//             ),
//             const SizedBox(height: 5),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     Get.to(() => const ForgetPassword());
//                   },
//                   child: const Text(
//                     'Forgot password ?',
//                     style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),fontSize: 14),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: _loginController.goToSignUp,
//                   child: const Text(
//                     'Create Account',
//                     style: TextStyle(color: Color.fromARGB(255, 95, 95, 95),fontSize: 14),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 50),
//             const Row(
//               children: [
//                 Expanded(
//                   child: Divider(),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Text(
//                     'Or sign in with',
//                   ),
//                 ),
//                 Expanded(
//                   child: Divider(),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//             // IconButton(
//             //   iconSize: 30,
//             //   color: Color.fromARGB(255, 0, 168, 206),
//             //   onPressed: _loginController.goToPhoneSignIn,
//             //   icon: const Icon(Icons.call),
//             // ),
//             Container(
//               width: 250,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius:
//                     BorderRadius.circular(15), // Adjust the radius as needed
//               ),
//               child: TextButton.icon(
//                 onPressed: _loginController.handleSignIn,
//                 icon: const 
//                 Image(
//                   image: AssetImage('lib/Assets/logos/google.png'),
//                   height: 30.0,
//                   width: 30.0,
//                 ),
//                 label: const Text(
//                   'Continue with Google',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



