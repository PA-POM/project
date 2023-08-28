import 'package:classifly_cat/data_cat_breeds/bengal.dart';
import 'package:classifly_cat/data_cat_breeds/british_shorthair.dart';
import 'package:classifly_cat/data_cat_breeds/persian.dart';
import 'package:classifly_cat/data_cat_breeds/siamese.dart';
import 'package:classifly_cat/data_cat_breeds/sphynx.dart';
import 'package:flutter/material.dart';

class Catbreeds extends StatefulWidget {
  const Catbreeds({super.key});

  @override
  State<Catbreeds> createState() => _CatbreedsState();
}

class _CatbreedsState extends State<Catbreeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff402E32),
        appBar: AppBar(
            title: const Text("ข้อมูลสายพันธุ์แมว",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit')),
            backgroundColor: const Color(0xff906F3F)),
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 219, 217),
                  borderRadius: BorderRadius.circular(20)),
              height: 650,
              width: 370,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Material(
                                color: const Color(0xff906F3F),
                                elevation: 8,
                                borderRadius: BorderRadius.circular(20),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                    splashColor: Colors.black26,
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Persian())),
                                    child: Column(children: [
                                      Image.asset(
                                        'image/Persian.png',
                                        height: 140,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      const Text(
                                        'เปอร์เซีย',
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Kanit'),
                                        textAlign: TextAlign.center,
                                      )
                                    ])),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Material(
                                color: const Color(0xff906F3F),
                                elevation: 8,
                                borderRadius: BorderRadius.circular(20),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: InkWell(
                                    splashColor: Colors.black26,
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Bengal())),
                                    child: Column(children: [
                                      Image.asset(
                                        'image/Bengal.png',
                                        height: 140,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      const Text(
                                        'เบงกอล',
                                        style: TextStyle(
                                            fontSize: 19,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Kanit'),
                                        textAlign: TextAlign.center,
                                      )
                                    ])),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Material(
                                  color: const Color(0xff906F3F),
                                  elevation: 8,
                                  borderRadius: BorderRadius.circular(20),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: InkWell(
                                      splashColor: Colors.black26,
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Sphynx())),
                                      child: Column(children: [
                                        Image.asset(
                                          'image/Sphynx.png',
                                          height: 140,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                        const Text(
                                          'สฟิงซ์',
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Color.fromARGB(
                                                  255, 252, 252, 252),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Kanit'),
                                          textAlign: TextAlign.center,
                                        )
                                      ])),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Material(
                                  color: const Color(0xff906F3F),
                                  elevation: 8,
                                  borderRadius: BorderRadius.circular(20),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: InkWell(
                                      splashColor: Colors.black26,
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const BritishShorthair())),
                                      child: Column(children: [
                                        Image.asset(
                                          'image/British_shorthair.png',
                                          height: 140,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                        const Text(
                                          'บริติช ช็อตแฮร์',
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Kanit'),
                                          textAlign: TextAlign.center,
                                        )
                                      ])),
                                ),
                              ),
                            ]),
                      ),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Material(
                                  color: const Color(0xff906F3F),
                                  elevation: 8,
                                  borderRadius: BorderRadius.circular(20),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: InkWell(
                                      splashColor: Colors.black26,
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Siamese())),
                                      child: Column(children: [
                                        Image.asset(
                                          'image/Siamese.png',
                                          height: 140,
                                          width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                        const Text(
                                          'วิเชียรมาศ',
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Kanit'),
                                          textAlign: TextAlign.center,
                                        )
                                      ])),
                                ),
                              ),
                            ]),
                      ))
                    ]),
              ),
            ),
          )),
        ));
  }
}
