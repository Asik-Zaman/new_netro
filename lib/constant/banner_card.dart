import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  //final String image;

  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        margin: EdgeInsets.only(right: 15),
        height: 100,
        width: 230,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Image.jpg'),
                fit: BoxFit.contain)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Shoes Air Max',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Men\'s Shoes',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF264653),
                        fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF)),
                      child: Center(
                        child: Text(
                          'Shop now',
                          style: TextStyle(
                              color: Color(0xFF2A9D8F), fontFamily: "Sora"),
                        ),
                      ))
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                child: Image.asset(
                  'assets/images/juta.png',
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
