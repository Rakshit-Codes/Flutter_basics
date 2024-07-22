import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/setting.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String? selectedHelpMessage;
  List<MyMessage> chatLog = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sl Help Desk",style: TextStyle(color: Colors.green,),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: chatLog.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4.0,
                    horizontal: 8.0,
                  ),
                  child: MessageBubble(message: chatLog[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButton<String>(
                    hint: Text('            . . . . . . . . select here . . . . . . . .'),
                    value: selectedHelpMessage,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedHelpMessage = newValue!;
                      });
                    },
                    items: <String>[
                      'Who are you?',
                      'Thank you!',
                      'Setting',
                    ].map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (selectedHelpMessage != null) {
                      sendMessage(selectedHelpMessage!);
                    }
                  },
                  icon: Icon(Icons.send)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void sendMessage(String message) {
    // Add user message to chat log
    setState(() {
      chatLog.insert(0, MyMessage(text: message, isUser: true));
    });

    // Respond with bot message
    String botResponse =
        getBotResponse(message, context); // Pass the context here
    if (botResponse.isNotEmpty) {
      setState(() {
        chatLog.insert(0, MyMessage(text: botResponse, isUser: false));
      });
    }
  }

  String getBotResponse(String message, BuildContext context) {
    // Basic logic for bot response
    if (message == 'Who are you?') {
      return 'I am SQ Bot!';
    } else if (message == 'What is Flutter?') {
      return 'Flutter is a UI toolkit from Google for building natively compiled applications for mobile, web, and desktop from a single codebase.';
    } else if (message == 'Hello! very') {
      return 'Hello! How can I assist you?';
    } else if (message == 'Thank you!') {
      return 'You\'re welcome!';
    } else if (message == 'Setting') {
      // Navigate to FlutterScreen
      Get.to(SettingScreen());
      // Return an empty string or some other response indicating navigation
      return '';
    } else {
      return 'I\'m sorry, I didn\'t understand that.';
    }
  }
}

class MyMessage {
  final String text;
  final bool isUser;

  MyMessage({required this.text, required this.isUser});
}

class MessageBubble extends StatelessWidget {
  final MyMessage message;

  const MessageBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: message.isUser ? Colors.blue : Color.fromARGB(182, 0, 0, 0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!message.isUser)
              CircleAvatar(
                radius: 16,
                backgroundColor: Colors.white,
                child: Icon(Icons.air,color: const Color.fromARGB(255, 109, 171, 111),),
              ), // Bot Icon
            SizedBox(width: 8),
            Text(
              message.text,
              style: TextStyle(
                fontSize: message.isUser?16:14 ,
                fontWeight: message.isUser?FontWeight.w500:FontWeight.w400,
                color: message.isUser ? Colors.white : Color.fromARGB(207, 196, 255, 173),
              ),
            ),
            if (message.isUser)
              SizedBox(width: 8),
            if (message.isUser)
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ), // User Icon
          ],
        ),
      ),
    );
  }
}
