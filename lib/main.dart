import 'package:classifly_cat/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      title: "cat",
      home: Myapp(),
    ));
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
