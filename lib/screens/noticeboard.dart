import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/constants/colors.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({super.key});

  @override
  State<NoticeBoard> createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice Board'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text(
              'Online Courses:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: TColors.pmain, // Section title color
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Students can refer the list of NPTEL online courses , Coursera and EDX as per their interest.\nSem-3 Students have to register and complete this "Introduction to HTML5" course as an Innovative Asignment work.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Upcomming Workshop:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: TColors.pmain, // Section title color
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              ' Design Engineering Workshop\n Workshop on HTML\n Workshop on C Graphics\n Workshop on Basics of PHP \n Workshop on Python using Django Framework',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Upcomming Activities:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: TColors.pmain, // Section title color
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              ' C Programming Competition\n Code Hunt Competition\n Hackathon\n Photoshop Competition',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}