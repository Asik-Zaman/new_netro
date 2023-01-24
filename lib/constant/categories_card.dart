import 'package:flutter/material.dart';


class CategoriesCard extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Color textColor;

  const CategoriesCard(
      {super.key,
      required this.title,
      required this.textColor,
      required this.color,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20),
          height: 72,
          width: 72,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image.asset(image),
          )),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 9.0),
          child: Text(
            title,
            style: TextStyle(
                color: textColor,
                fontFamily: "Sora",
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
