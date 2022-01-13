import 'package:flutter/material.dart';
import 'package:only_cards/design/coolors.dart';

import 'cards/card1/card_1.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cardHeight = 367.0;
    const cardWidth = 360.0;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Card1(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Card2(cardHeight: cardHeight, cardWidth: cardWidth),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({
    Key? key,
    required this.cardHeight,
    required this.cardWidth,
  }) : super(key: key);

  final double cardHeight;
  final double cardWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Material(
        color: Coolors.goldenClr,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipOval(
                    child: Image.asset('assets/card2/3.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
