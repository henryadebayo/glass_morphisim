import 'dart:ui';

import 'package:flutter/material.dart';

import 'custom_textStyle.dart';


class CreditCard extends StatefulWidget {

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  Color colourCode = Colors.black.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState((){
          if (colourCode == Colors.black.withOpacity(0.5)){
            colourCode = Colors.white.withOpacity(0.5);
          }
        });
      },
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: colourCode, width: 1.5),
            ),
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.credit_card_rounded, size: 40, color: Colors.white.withOpacity(0.5)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text('5199', style: TextStyles.cardTextStyle),
                        SizedBox(width: 15),
                        Text('6478', style: TextStyles.cardTextStyle),
                        SizedBox(width: 15),
                        Text('9534', style: TextStyles.cardTextStyle),
                        SizedBox(width: 15),
                        Text('0564', style: TextStyles.cardTextStyle),
                      ],
                    ),
                    const SizedBox(height: 7),
                    const Text('Marvel.Dart', style: TextStyles.cardTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(

                          overflow: Overflow.visible,
                          children: [
                              Container(
                                height: 24,
                                width:24,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0XffF79E1B)
                                ),
                              ),
                              Positioned(
                                left: 10,
                                child: Container(
                                  height: 24,
                                  width:24,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0XffEB001B),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
