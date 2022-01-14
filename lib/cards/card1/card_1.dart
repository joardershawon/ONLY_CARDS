import 'package:flutter/material.dart';
import 'package:only_cards/design/styles.dart';

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
    required this.cardHeight,
    required this.cardWidth,
  }) : super(key: key);
  final double cardHeight, cardWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: cardHeight,
        width: cardWidth,
        child: Material(
          elevation: 5,
          shadowColor: Colors.deepPurple.shade400,
          borderRadius: BorderRadius.circular(20),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipOval(
                        child: Image.asset('assets/card1/avatar.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Frank Esteban',
                              style: titleStyle,
                            ),
                          ),
                          Text(
                            'Flutter Development',
                            style: subTitleStyle,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/card1/card-image.png',
                fit: BoxFit.cover,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'This is a Simple Card',
                      textAlign: TextAlign.left,
                      style: subTitleStyle.copyWith(
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
