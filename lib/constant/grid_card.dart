import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  const GridCard(
      {super.key,
      required this.image,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Card(
        elevation: 2.0,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 112,
                  width: 158,
                  decoration: BoxDecoration(
                      color: Color(0xFFE9F1F4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 36, right: 42, top: 16, bottom: 16),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Container(
              height: 76,
              width: 158,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FittedBox(
                      child: Text(
                        title,
                        style: TextStyle(
                            color: Color(0xFF264653),
                            fontFamily: "Sora",
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xFFF4A100),
                          size: 15,
                        ),
                        Text(
                          '4.5 (257)',
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${price}',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              color: Color(0xFF2A9D8F),
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.shopping_cart,
                            size: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
