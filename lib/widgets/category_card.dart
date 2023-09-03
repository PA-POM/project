import 'package:classifly_cat/constants.dart';
import 'package:flutter/material.dart';

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
            color: const Color.fromARGB(255, 255, 255, 255),
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