import 'package:classifly_cat/constants.dart';
import 'package:classifly_cat/data_cat_breeds/bengal.dart';
import 'package:classifly_cat/data_cat_breeds/british_shorthair.dart';
import 'package:classifly_cat/data_cat_breeds/persian.dart';
import 'package:classifly_cat/data_cat_breeds/siamese.dart';
import 'package:classifly_cat/data_cat_breeds/sphynx.dart';
import 'package:classifly_cat/widgets/category_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    image: AssetImage("image/cat_foot.png"))),
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
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    CategoryCard(
                      title: "เปอร์เซีย",
                      title2: '(Persian)',
                      cimage: 'image/Persian.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Persian())),
                    ),
                    CategoryCard(
                      title: "เบงกอล",
                      title2: '(Bengal)',
                      cimage: 'image/Bengal.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bengal())),
                    ),
                    CategoryCard(
                      title: "สฟิงซ์",
                      title2: '(Sphynx)',
                      cimage: 'image/Sphynx.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sphynx())),
                    ),
                    CategoryCard(
                      title: "บริติช ช็อตแฮร์",
                      title2: '(British shorthair)',
                      cimage: 'image/British_shorthair.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BritishShorthair())),
                    ),
                    CategoryCard(
                      title: "วิเชียรมาศ",
                      title2: '(Siamese)',
                      cimage: 'image/Siamese.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Siamese())),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
