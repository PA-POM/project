import 'package:classifly_cat/constants.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String cimage;
  final String title;
  final String title2;
  final VoidCallback onPressed;

  const CategoryCard({
    super.key,
    required this.cimage,
    required this.title,
    required this.title2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        height: 150, width: 400,
        //padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: White,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: Black,
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  cimage,
                  height: 120,
                  width: 110,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Kanit'),
                      ),
                      Text(
                        title2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Kanit'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
