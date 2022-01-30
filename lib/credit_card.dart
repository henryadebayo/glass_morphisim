import 'package:flutter/material.dart';


class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white.withOpacity(0.5), width: 1.5),
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
                      Text('1111', style: TextStyles.cardTextStyle),
                      SizedBox(width: 15),
                      Text('2222', style: TextStyles.cardTextStyle),
                      SizedBox(width: 15),
                      Text('3333', style: TextStyles.cardTextStyle),
                      SizedBox(width: 15),
                      Text('4444', style: TextStyles.cardTextStyle),
                    ],
                  ),
                  const SizedBox(height: 7),
                  const Text('John Doe', style: TextStyles.cardTextStyle),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
