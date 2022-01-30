import 'package:flutter/material.dart';


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
