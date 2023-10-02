import 'package:classifly_cat/fireBase/cat_model_firebase.dart';
import 'package:flutter/material.dart';

class ShowCatData extends StatefulWidget {
  final CatModel catdataModel;
  const ShowCatData({super.key, required this.catdataModel});

  @override
  State<ShowCatData> createState() => _ShowCatDataState();
}

class _ShowCatDataState extends State<ShowCatData> {
  late CatModel catModel;

  @override
  void initState() {
    super.initState();
    catModel = widget.catdataModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
          title: Text("${catModel.tname}/${catModel.ename}",
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit'),
              textAlign: TextAlign.center),
          backgroundColor: const Color(0xffD9A05B)),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Material(
                  color: Colors.white,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    child: Image.network(
                      catModel.image,
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('ลักษณะนิสัย',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kanit'),
                textAlign: TextAlign.left),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(catModel.cha,
                      style: const TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 31, 31, 31),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Kanit'),
                      textAlign: TextAlign.start),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('ลักษณะเด่นของสายพันธุ์',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kanit'),
                textAlign: TextAlign.left),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(catModel.feature,
                      style: const TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 31, 31, 31),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Kanit'),
                      textAlign: TextAlign.start),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('การดูแล',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Kanit'),
                textAlign: TextAlign.left),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(catModel.care,
                      style: const TextStyle(
                          fontSize: 19,
                          color: Color.fromARGB(255, 31, 31, 31),
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Kanit'),
                      textAlign: TextAlign.start),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
