import 'package:flutter/material.dart';

double getPercentSize(double percent, bool isHeight, BuildContext context) {
  final size = MediaQuery.of(context).size;
  double result;
  isHeight ? result = (size.height * percent) / 100 : result = (size.width * percent) / 100;
  return result;
}
