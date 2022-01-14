import 'package:flutter/material.dart';
import 'package:only_cards/design/size.dart';

import 'cards/card1/card_1.dart';
import 'cards/card2/card_2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const cardHeight = 367.0;
    var cardWidth = getPercentSize(90, false, context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card1(
                    cardHeight: cardHeight,
                    cardWidth: cardWidth,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
