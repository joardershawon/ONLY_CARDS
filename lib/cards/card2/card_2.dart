import 'package:flutter/material.dart';
import 'package:only_cards/design/coolors.dart';
import 'package:only_cards/design/styles.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                stackCircleImage(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    color: Colors.white30,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.more_vert_rounded),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding stackCircleImage() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 80,
        child: Stack(
          children: [
            Positioned(
              left: 40,
              child: ClipOval(
                child: Image.asset(
                  'assets/card2/3.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Positioned(
              left: 20,
              child: ClipOval(
                child: Image.asset(
                  'assets/card2/2.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            ClipOval(
              child: Container(
                height: 40,
                width: 40,
                color: Colors.black,
                child: Center(
                  child: Text(
                    '+ 3',
                    style: titleWStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
