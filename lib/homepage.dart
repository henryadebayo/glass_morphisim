import 'package:flutter/material.dart';

import 'circles.dart';
import 'credit_card.dart';


const double cardWidth = 340;
const double cardHeight = 220;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffCC489B), Color(0xff560F8C)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: cardHeight,
            width: cardWidth,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Circle(top: -70, left: -50, height: 200, width: 200),
                const Circle(top: -60, right: 10, height: 120, width: 120, isBlue: true),
                const Circle(bottom: -70, right: -50, height: 200, width: 200),
                const Circle(bottom: -40, left: 10, height: 100, width: 100, isBlue: true),
                Positioned(
                  top: 0,
                  bottom: 0,
                  width: cardWidth,
                  child: CreditCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
