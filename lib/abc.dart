//setting screen 

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:sq/privacypolicy.dart';
// import 'package:sq/screens/chatbot/screen_nav_chatbot.dart';
// import 'package:sq/screens/user/change_password.dart';
// import 'package:sq/screens/user/profile.dart';


// class SettingScreen extends StatelessWidget {
//   const SettingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true,
//        title: const Text(
//                 "Settings",
//                 style: TextStyle(
//                     fontSize: 20,
//                     letterSpacing: 2,
//                     color: Colors.green,
//                     fontWeight: FontWeight.w500),
//               ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
  
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       // Navigate to the desired screen here
//                       Get.to(ProfileScreen());
//                     },
//                     child: Container(
//                       width: Get.width * 0.9,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Icon(
//                               Iconsax.user_edit,
//                               size: 28,
//                               color: Colors.green,
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 "Profile",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.to(ChangePassword());
//                       // Navigate to the desired screen here
                      
//                     },
//                     child: Container(
//                       width: Get.width * 0.9,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Icon(
//                               Icons.password,
//                               size: 28,
//                               color: Colors.green,
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 "Change passsword",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       // Navigate to the desired screen here
                     
//                     },
//                     child: Container(
//                       width: Get.width * 0.9,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Icon(
//                               Icons.reviews,
//                               size: 28,
//                               color: Colors.green,
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 "Reviews",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       // Navigate to the desired screen here
//                      Get.to(PrivacyPolicyPage());
//                     },
//                     child: Container(
//                       width: Get.width * 0.9,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Icon(
//                               Icons.security,
//                               size: 28,
//                               color: Colors.green,
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 "Privacy policy",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       // Navigate to the desired screen here
//                       Get.to(const ChatScreen());
//                     },
//                     child: Container(
//                       width: Get.width * 0.9,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Icon(
//                               Icons.help,
//                               size: 28,
//                               color: Colors.green,
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 "Help",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       // Navigate to the desired screen here
                      
//                     },
//                     child: Container(
//                       width: Get.width * 0.9,
//                       height: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.6),
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                             offset: const Offset(0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Icon(
//                               Iconsax.user_add,
//                               size: 28,
//                               color: Colors.green,
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Expanded(
//                               child: Text(
//                                 "Invite a friend",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black87,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.amber,
//                         borderRadius: BorderRadius.circular(1),
//                       ),
//                     ),
// child: Icon(Iconsax.user),

// setting screen over 





// change password

// import 'package:get/get.dart';
// import 'package:sq/home.dart';
// import 'package:sq/screens/email_auth/login.dart';
// import 'package:sq/utils/constants/uihelper.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';


// class ChangePassword extends StatelessWidget {
//   const ChangePassword({Key? key});

//   void forgetPassword(BuildContext context, String email) async {
//     if (email.isEmpty) {
//       DUI.CustomAlertBox(context, "Enter an email to change password");
//     } else {
//       try {
//         await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
//         Get.snackbar("Success", "Email sent Successfully . . !",
//               colorText: Colors.green, backgroundColor: Colors.black);
//         Get.to(HomeScreen());

//       } on FirebaseAuthException catch (e) {
//         DUI.CustomAlertBox(context, e.code.toString());
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController emailController = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(centerTitle: true,
//        title: const Text(
//                 "Change password",
//                 style: TextStyle(
//                     fontSize: 20,
//                     letterSpacing: 2,
//                     color: Colors.green,
//                     fontWeight: FontWeight.w500),
//               ),
//       ),
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

// privacy policy


// import 'package:flutter/material.dart';

// class PrivacyPolicyPage extends StatelessWidget {
//   const PrivacyPolicyPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      appBar: AppBar(centerTitle: true,
//        title: const Text(
//                 "Privacy Policy",
//                 style: TextStyle(
//                     fontSize: 20,
//                     letterSpacing: 2,
//                     color: Colors.green,
//                     fontWeight: FontWeight.w500),
//               ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
            
//             Text(
//               'Information We Collect',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green, // Section title color
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'We collect personal information such as your name and email address when you sign in to our app. We may also collect device information such as your IP address and device type.',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'How We Use Your Information',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green, // Section title color
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'We use your personal information to provide and improve our services. This may include communicating with you, providing customer support, and personalizing the content you see.',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Changes to Our Privacy Policy',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green, // Section title color
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'We may update our privacy policy from time to time. Any changes will be reflected on this page. We encourage you to review our privacy policy periodically for any updates.',
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// forget password 

// import 'package:get/get.dart';
// import 'package:sq/screens/email_auth/login.dart';
// import 'package:sq/utils/constants/uihelper.dart';
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
//         Get.snackbar("Success", "Email sent Successfully . . !",
//               colorText: Colors.green, backgroundColor: Colors.black);
//         Get.to(LoginScreen());

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




// chat bot 


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:sq/screens/user/setting.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   String? selectedHelpMessage;
//   List<MyMessage> chatLog = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("SQ Help Desk",style: TextStyle(color: Colors.green,),),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               reverse: true,
//               itemCount: chatLog.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 4.0,
//                     horizontal: 8.0,
//                   ),
//                   child: MessageBubble(message: chatLog[index]),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: DropdownButton<String>(
//                     hint: Text('            . . . . . . . . select here . . . . . . . .'),
//                     value: selectedHelpMessage,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         selectedHelpMessage = newValue!;
//                       });
//                     },
//                     items: <String>[
//                       'Who are you?',
//                       'Thank you!',
//                       'Setting',
//                     ].map<DropdownMenuItem<String>>(
//                       (String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       },
//                     ).toList(),
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     if (selectedHelpMessage != null) {
//                       sendMessage(selectedHelpMessage!);
//                     }
//                   },
//                   icon: Icon(Icons.send),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void sendMessage(String message) {
//     // Add user message to chat log
//     setState(() {
//       chatLog.insert(0, MyMessage(text: message, isUser: true));
//     });

//     // Respond with bot message
//     String botResponse =
//         getBotResponse(message, context); // Pass the context here
//     if (botResponse.isNotEmpty) {
//       setState(() {
//         chatLog.insert(0, MyMessage(text: botResponse, isUser: false));
//       });
//     }
//   }

//   String getBotResponse(String message, BuildContext context) {
//     // Basic logic for bot response
//     if (message == 'Who are you?') {
//       return 'I am SQ Bot!';
//     } else if (message == 'What is Flutter?') {
//       return 'Flutter is a UI toolkit from Google for building natively compiled applications for mobile, web, and desktop from a single codebase.';
//     } else if (message == 'Hello! very') {
//       return 'Hello! How can I assist you?';
//     } else if (message == 'Thank you!') {
//       return 'You\'re welcome!';
//     } else if (message == 'Setting') {
//       // Navigate to FlutterScreen
//       Get.to(SettingScreen());
//       // Return an empty string or some other response indicating navigation
//       return '';
//     } else {
//       return 'I\'m sorry, I didn\'t understand that.';
//     }
//   }
// }

// class MyMessage {
//   final String text;
//   final bool isUser;

//   MyMessage({required this.text, required this.isUser});
// }

// class MessageBubble extends StatelessWidget {
//   final MyMessage message;

//   const MessageBubble({Key? key, required this.message}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment:
//           message.isUser ? Alignment.centerRight : Alignment.centerLeft,
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
//         padding: EdgeInsets.all(12.0),
//         decoration: BoxDecoration(
//           color: message.isUser ? Colors.blue : Color.fromARGB(182, 0, 0, 0),
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             if (!message.isUser)
//               CircleAvatar(
//                 radius: 16,
//                 backgroundColor: Colors.white,
//                 child: Icon(Icons.air,color: const Color.fromARGB(255, 109, 171, 111),),
//               ), // Bot Icon
//             SizedBox(width: 8),
//             Text(
//               message.text,
//               style: TextStyle(
//                 fontSize: message.isUser?16:14 ,
//                 fontWeight: message.isUser?FontWeight.w500:FontWeight.w400,
//                 color: message.isUser ? Colors.white : Color.fromARGB(207, 196, 255, 173),
//               ),
//             ),
//             if (message.isUser)
//               SizedBox(width: 8),
//             if (message.isUser)
//               CircleAvatar(
//                 radius: 12,
//                 backgroundColor: Colors.white,
//                 child: Icon(Icons.person),
//               ), // User Icon
//           ],
//         ),
//       ),
//     );
//   }
// }






// MessagesScreen

// import 'package:flutter/material.dart';


// class MessagesScreen extends StatefulWidget {
//   final List messages;
//   const MessagesScreen({Key? key, required this.messages}) : super(key: key);

//   _MessagesScreenState createState() => _MessagesScreenState();
// }

// class _MessagesScreenState extends State<MessagesScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var W = MediaQuery.of(context).size.width;
//     return ListView.separated(
//         itemBuilder: (context, index) {

//           // final message = widget.messages[index];
//           // final isUserMessage = message['isUserMessage'] ?? false;
//           // final text = message['Message']?['text']?[0] ?? '';

//           // // Check if text is null
//           // if (text == null) {
//           //   return SizedBox.shrink();
//           // }

//           return Container(
//             margin: EdgeInsets.symmetric(vertical: 3,horizontal: 14),
//             child: Row(
//                 mainAxisAlignment: widget.messages[index]['isUserMessage']
//                     ? MainAxisAlignment.end
//                     : MainAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.symmetric(vertical:10, horizontal: 10),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(
//                           20,
//                         ),
//                         topRight: Radius.circular(
//                           20,
//                         ),
//                         bottomRight: Radius.circular(
//                             widget.messages[index]['isUserMessage'] ? 0 : 20),
//                         topLeft: Radius.circular(
//                             widget.messages[index]['isUserMessage'] ? 20 : 0),
//                       ),
//                       color: widget.messages[index]['isUserMessage']
//                           ? Color.fromARGB(116, 0, 146, 149)
//                           : Color.fromARGB(174, 98, 255, 103)
//                     ),
//                     constraints: BoxConstraints(maxWidth: W * 2/ 3),
//                     child: Text(widget.messages[index]['message'].text.text[0]),
//                   ),
//                 ]),
//           );
//         },
//         separatorBuilder: (_ , i ) => Padding(padding: EdgeInsets.only(top: 10)),
//         itemCount: widget.messages.length);
//   }
// }


// floating action button


  // floatingActionButton: FloatingActionButton(
  //       backgroundColor: Color.fromARGB(170, 255, 255, 255),
  //       onPressed: () {
  //         Get.to(ChatScreen());
  //       },
  //       child: Icon(Icons.search,color: Colors.cyan[700],),
  //     ),



  // flutter pubspec.yaml
