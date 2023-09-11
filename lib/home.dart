import 'package:classifly_cat/camera.dart';
import 'package:classifly_cat/data_cat_breeds/bengal.dart';
import 'package:classifly_cat/data_cat_breeds/british_shorthair.dart';
import 'package:classifly_cat/data_cat_breeds/persian.dart';
import 'package:classifly_cat/data_cat_breeds/siamese.dart';
import 'package:classifly_cat/data_cat_breeds/sphynx.dart';
import 'package:classifly_cat/gallery.dart';
import 'package:classifly_cat/widgets/category_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  // Define the screens or pages you want to switch between
  final List<Widget> pages = [
    // Your first screen or page
    HomeScreen(),
    // Your second screen or page
    PickImageCamera(),
    // Your third screen or page
    PickImageGallery(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xffD9A05B),
          iconSize: 40,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          selectedFontSize: 16.0,
          unselectedFontSize: 14.0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo),
              label: 'Gallery',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
        ),
      ),
    );
  }
}

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
                        fontSize: 50,
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
                    fontSize: 18,
                    color: Colors.blueGrey),
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
            ],
          ),
        ))
      ]),
    );
  }
}
