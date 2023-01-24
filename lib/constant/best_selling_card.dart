import 'package:flutter/material.dart';

class BestSellingcard extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  const BestSellingcard(
      {super.key,
      required this.title,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10),
      elevation: 2.0,
      child: Container(
        height: 147,
        width: 101.33,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 86,
                  width: 101.33,
                  decoration: BoxDecoration(
                      color: Color(0xFFE9F1F4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 21.33, top: 13, bottom: 13),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Container(
              height: 61,
              width: 101.33,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${price}',
                          style: TextStyle(fontSize: 10),
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
