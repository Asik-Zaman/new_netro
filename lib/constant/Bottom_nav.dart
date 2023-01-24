import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 360,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 252, 252),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF2A9D8F)),
            child: Center(
                child: Image.asset(
              'assets/images/nav_home.png',
              fit: BoxFit.contain,
            )),
          ),
          Image.asset(
            'assets/images/nav_bell.png',
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/images/nav_cart.png',
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/images/nav_msg.png',
            fit: BoxFit.contain,
          ),
          Image.asset(
            'assets/images/nav_profile.png',
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
