import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Group.png'),
                          fit: BoxFit.cover)))),
          Container(
            height: 40,
            width: 204,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFFF7F7F7),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search your product',
                    style: TextStyle(color: Color(0xFFDBDBDB)),
                  )
                ],
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bell.png'),
                          fit: BoxFit.cover)))),
          IconButton(
              onPressed: () {},
              icon: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Heart.png'),
                          fit: BoxFit.cover)))),
        ],
      ),
    );
  }
}
