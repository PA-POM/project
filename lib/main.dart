import 'package:classifly_cat/constants.dart';

import 'package:classifly_cat/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

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
        home: const HomeScreen());
  }
}
