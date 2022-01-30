import 'dart:ui';

import 'package:flutter/material.dart';

import 'credit_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackdropFilter Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}


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

class Circle extends StatelessWidget {
  final bool isBlue;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final double? height;
  final double? width;

  const Circle({
    this.isBlue = false,
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      top: top,
      left: left,
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: isBlue ? [const Color(0xff434CC8), const Color(0xff4077D2)] : [const Color(0xffCC489B), const Color(0xffE27040)],
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
