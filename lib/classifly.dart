import 'package:flutter/material.dart';

class classifly extends StatefulWidget {
  const classifly({super.key});

  @override
  State<classifly> createState() => _classiflyState();
}

class _classiflyState extends State<classifly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff402E32),
        appBar: AppBar(
            title: const Text(
              "ระบบจำแนกสายพันธุ์แมว",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
            ),
            backgroundColor: const Color(0xff906F3F)),
        body: Container());
  }
}
