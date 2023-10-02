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
          child: Container(
            height: size.height * .195,
            decoration: const BoxDecoration(
                color: Yellowbrown,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                image: DecorationImage(
                    alignment: Alignment.topRight,
                    image: AssetImage('assets/images/cat_foot.png'))),
          ),
        ),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Text(
                  'Cat Breeds Classification',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      height: 1.35,
                      fontWeight: FontWeight.w600,
                      fontSize: 50,
                      color: White),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                  height: 30,
                  child: Text(
                    'ข้อมูลสายพันธุ์แมว',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.blueGrey),
                  )),
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
                        childAspectRatio: 0.9,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: widgets,
                      ),
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
