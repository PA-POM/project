import 'package:classifly_cat/catbreeds.dart';
import 'package:classifly_cat/classifly.dart';
import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff402E32),
        appBar: AppBar(
            title: const Center(
                child: Text(
              "หน้าหลัก",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
            )),
            backgroundColor: const Color(0xff906F3F)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Image.asset(
                'image/1.png',
                height: 50,
                width: 50,
              ),
              const Text(
                "\t\tยินดีต้อนรับเข้าสู่แอปพลิเคชันสำหรับจำแนกสายพันธุ์แมวท่านสามารถจำแนกสายพันธุ์แมวได้จากภาพถ่ายของน้องแมวและยังดูรายละเอียดของสายพันธุ์แมวที่ต้องการได้จากเมนูการใช้งานด้านล่างครับ",
                style: TextStyle(
                    fontSize: 18.5,
                    color: Color.fromARGB(255, 230, 225, 225),
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Kanit'),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 154, 156, 154),
                        borderRadius: BorderRadius.circular(20)),
                    height: 400,
                    width: 800,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "เมนูการใช้งาน",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color(0xff402E32),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Kanit'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Center(
                              child: InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Catbreeds())),
                                  child: Image.asset(
                                    'image/catbreeds.png',
                                    height: 150,
                                    width: 300,
                                  ))),
                          Center(
                              child: InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const classifly())),
                                  child: Image.asset(
                                    'image/classifly.png',
                                    height: 150,
                                    width: 300,
                                  )))
                        ],
                      ),
                    )),
              ),
            ]),
          ),
        ));
  }
}
