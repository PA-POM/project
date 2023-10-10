import 'package:classifly_cat/constants.dart';
import 'package:classifly_cat/pages/show_catdata_page.dart';

import 'package:classifly_cat/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../fireBase/cat_model_firebase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> widgets = [];
  int index = 0;
  List<CatModel> catdataModels = [];

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

      catdataModels = catModels; // เก็บข้อมูล CatModel ใน catdataModels

      widgets = catModels.map((cat) {
        final widget = createWidget(cat, index);
        index++;
        return widget;
      }).toList();

      setState(() {});
    } catch (e) {
      // ignore: avoid_print
      print('Error fetching data: $e');
    }
  }

  Widget createWidget(CatModel catModel, int index) => CategoryCard(
      cimage: catModel.image,
      title: catModel.tname,
      title2: catModel.ename,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ShowCatData(catdataModel: catdataModels[index])));
      });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  height: size.height * .205,
                  decoration: const BoxDecoration(
                      color: Yellowbrown,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage('assets/images/catlogo.png'),
                          fit: BoxFit.contain)),
                ),
              ),
            ],
          ),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Text(
                    'Cat Breeds Classification',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0), // ขนาดและทิศทางของเงา
                            blurRadius: 10.0, // รัศมีของเงา
                            color: Colors.black, // สีของเงา
                          ),
                        ],
                        height: 1.25,
                        fontSize: 41,
                        color: White,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Kanit'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'ข้อมูลสายพันธุ์แมว',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0), // ขนาดและทิศทางของเงา
                          blurRadius: 10.0, // รัศมีของเงา
                          color: Color.fromARGB(255, 0, 0, 0), // สีของเงา
                        ),
                      ],
                      fontSize: 20,
                      color: White,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Kanit'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: widgets.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: widgets,
                        ),
                ),
              ),
            ],
          ),
        ))
      ]),
    );
  }
}
