import 'dart:io';

import 'package:classifly_cat/fireBase/cat_model_firebase.dart';
import 'package:classifly_cat/constants.dart';
import 'package:classifly_cat/pages/show_catdata_page.dart';
import 'package:classifly_cat/widgets/tabbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final String label;
  final String confidence;
  final int index;
  final String image;
  final String selectedModel;

  const ResultPage(
      {Key? key,
      required this.label,
      required this.confidence,
      required this.index,
      required this.image,
      required this.selectedModel})
      : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<Widget> widgets = [];
  List<CatModel> catdataModels = [];
  bool showButton = false;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('catbreeds').get();
      List<CatModel> catModels = querySnapshot.docs.map((doc) {
        return CatModel(
          tname: doc['thai_name'],
          ename: doc['eng_name'],
          image: doc['image'],
          feature: doc['feature'],
          care: doc['catcare'],
          cha: doc['character'],
          land: doc['native_land'],
        );
      }).toList();

      catdataModels = catModels;

      if (widget.index == -1) {
        setState(() {
          showButton = false;
        });
      } else {
        setState(() {
          showButton = true;
          widgets = [
            Container(
              constraints: const BoxConstraints(maxWidth: 200.0),
              decoration: BoxDecoration(
                color: const Color(0xffD9A05B), // สีพื้นหลังของปุ่ม
                borderRadius: BorderRadius.circular(10), // ความโค้งของขอบปุ่ม
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  "ดูข้อมูล ${widget.label} เพิ่มเติม",
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white, // สีข้อความบนปุ่ม
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit',
                  ),
                ),
              ),
            )
          ];
        });
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error fetching data: $e');
    }

    // ignore: unnecessary_null_comparison
  }

  @override
  Widget build(BuildContext context) {
    // ทำอะไรกับ label, confidence, และ index ที่ได้รับในหน้านี้
    return Scaffold(
      backgroundColor: gray,
      appBar: AppBar(
        title: const Text('ผลลัพธ์การจำแนกสายพันธุ์แมว',
            style: TextStyle(
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0), // ขนาดและทิศทางของเงา
                    blurRadius: 10.0, // รัศมีของเงา
                    color: Black, // สีของเงา
                  ),
                ],
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit'),
            textAlign: TextAlign.center),
        backgroundColor: const Color(0xffD9A05B),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 25),
            Text(
              widget.selectedModel,
              style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                child: Image.file(
                  File(widget.image),
                  fit: BoxFit.cover,
                  height: 270,
                  width: 270,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'ผลลัพธ์',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.label,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            const Text(
              'ค่าความแม่นยำ',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.confidence,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Tabbar()),
                      );
                    },
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 150.0),
                      decoration: BoxDecoration(
                        color: const Color(0xffD9A05B), // สีพื้นหลังของปุ่ม
                        borderRadius:
                            BorderRadius.circular(10), // ความโค้งของขอบปุ่ม
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: const Center(
                        child: Text(
                          'หน้าหลัก',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white, // สีข้อความบนปุ่ม
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Kanit',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Visibility(
              visible: showButton, // ใช้เงื่อนไขเพื่อกำหนดการแสดงปุ่ม
              child: Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowCatData(
                                catdataModel: catdataModels[widget.index])));
                  },
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 150.0),
                    decoration: BoxDecoration(
                      color: const Color(0xffD9A05B), // สีพื้นหลังของปุ่ม
                      borderRadius:
                          BorderRadius.circular(10), // ความโค้งของขอบปุ่ม
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Center(
                      child: Text(
                        'ดูข้อมูลเพิ่มเติม',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white, // สีข้อความบนปุ่ม
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
