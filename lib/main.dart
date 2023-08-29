import 'package:classifly_cat/constants.dart';
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
          height: size.height * .260,
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Cat Breeds \nClassifly\n',
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 50),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: .80,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    CategoryCard(
                      title: "เปอร์เซีย\n(Persian)",
                      cimage: 'image/Persian.png',
                      onPressed: () {},
                    ),
                    CategoryCard(
                      title: "เปอร์เซีย\n(Persian)",
                      cimage: 'image/Persian.png',
                      onPressed: () {},
                    ),
                    CategoryCard(
                      title: "เปอร์เซีย\n(Persian)",
                      cimage: 'image/Persian.png',
                      onPressed: () {},
                    ),
                    CategoryCard(
                      title: "เปอร์เซีย\n(Persian)",
                      cimage: 'image/Persian.png',
                      onPressed: () {},
                    ),
                    CategoryCard(
                      title: "เปอร์เซีย\n(Persian)",
                      cimage: 'image/Persian.png',
                      onPressed: () {},
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
            color: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: InkWell(
              onTap: onPressed,
              child: Column(
                children: [
                  Image.asset(
                    cimage,
                    height: 95,
                    width: 95,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 18),
                    ),
                  )
                ],
              ),
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
