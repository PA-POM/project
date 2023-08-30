import 'package:classifly_cat/constants.dart';
import 'package:classifly_cat/data_cat_breeds/bengal.dart';
import 'package:classifly_cat/data_cat_breeds/british_shorthair.dart';
import 'package:classifly_cat/data_cat_breeds/persian.dart';
import 'package:classifly_cat/data_cat_breeds/siamese.dart';
import 'package:classifly_cat/data_cat_breeds/sphynx.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "cat",
        theme: ThemeData(
            fontFamily: 'Kanit',
            scaffoldBackgroundColor: WbackgroundColor,
            textTheme:
                Theme.of(context).textTheme.apply(displayColor: kTextColor)),
        home: HomeScreen());
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
                alignment: Alignment.bottomLeft,
                image: AssetImage("image/cat_foot.png")),
          ),
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
                    'Cat Breeds \nClassifly',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 50,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
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

class CategoryCard extends StatelessWidget {
  final String cimage;
  final String title;
  final VoidCallback onPressed;

  const CategoryCard({
    super.key,
    required this.cimage,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kBackgroundColor,
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  cimage,
                  height: 120,
                  width: 110,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List WidgetOption = [
    Myapp(),
    Catbreeds(),
    Text("3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetOption[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              label: 'Data'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.white,
              ),
              label: 'Classifly')
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: const Color(0xff906F3F),
      ),
    );
  }
}*/
