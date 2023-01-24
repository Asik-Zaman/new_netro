import 'package:flutter/material.dart';

class CarosalCard extends StatelessWidget {
  final String image;
  const CarosalCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: 300,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color(0xFF275691),
              Color(0xFF0F1D35),
            ],
            stops: [0.0, 1.0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Text(
                      'DISCOUNT',
                      style: TextStyle(
                          fontFamily: "Sora",
                          color: Color(0xFFFFFFFF),
                          fontSize: 16),
                    ),
                    Text(
                      '35%',
                      style: TextStyle(
                          fontFamily: "Sora",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                          fontSize: 39),
                    ),
                    Text(
                      'DISCOUNT',
                      style: TextStyle(
                          fontFamily: "Sora",
                          color: Color(0xFFFFFFFF),
                          fontSize: 16),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
