import 'package:flutter/material.dart';

class GtuSyllabus extends StatefulWidget {
  const GtuSyllabus({super.key});

  @override
  State<GtuSyllabus> createState() => _GtuSyllabusState();
}

class _GtuSyllabusState extends State<GtuSyllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GTU Syllabus'),
        centerTitle: true,
      ),
    );
  }
}