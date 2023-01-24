import 'package:flutter/material.dart';

class FlashCard extends StatelessWidget {
  final String title;
  final String image;
  final String discountPercentage;
  const FlashCard(
      {super.key,
      required this.title,
      required this.image,
      this.discountPercentage = 'jj'});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10),
      elevation: 2.0,
      child: Container(
        height: 110,
        width: 150,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Color.fromARGB(255, 238, 236, 236),
              )
            ],
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [Color(0xFFE9F1F4), Color.fromARGB(255, 116, 135, 141)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.0, 1.0],
            )),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 8, color: Color(0xFFFFFFFF)),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
