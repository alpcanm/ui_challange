import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  double get veryLowHeight => height * 0.005;
  double get lowHeight => height * 0.01;
  double get mediumHeight => height * 0.02;
  double get highHeight => height * 0.04;
}
