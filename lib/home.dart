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
        Container(
          height: size.height * .240,
          decoration: const BoxDecoration(
              color: Color(0xffD9A05B),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              image: DecorationImage(
                  alignment: Alignment.centerRight,
                  image: AssetImage("image/cat_foot.png"))),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Cat Breeds Classification',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        height: 1.35,
                        fontWeight: FontWeight.w600,
                        fontSize: 55,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'ข้อมูลสายพันธุ์แมว',
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.80,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    CategoryCard(
                      title: "เปอร์เซีย\n(Persian)",
                      cimage: 'image/Persian.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Persian())),
                    ),
                    CategoryCard(
                      title: "เบงกอล\n(Bengal)",
                      cimage: 'image/Bengal.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bengal())),
                    ),
                    CategoryCard(
                      title: "สฟิงซ์\n(Sphynx)",
                      cimage: 'image/Sphynx.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Sphynx())),
                    ),
                    CategoryCard(
                      title: "บริติช ช็อตแฮร์\n(British shorthair)",
                      cimage: 'image/British_shorthair.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BritishShorthair())),
                    ),
                    CategoryCard(
                      title: "วิเชียรมาศ\n(Siamese)",
                      cimage: 'image/Siamese.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Siamese())),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ))
      ]),
    );
  }
}
