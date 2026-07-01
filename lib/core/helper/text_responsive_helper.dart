import 'package:flutter/material.dart';

abstract class TextResponsiveHelper {
  static double responsiveText({
    required double fontSize,
    required BuildContext context,
  }) {
    double scaleFactor = _getScaleFactor(context: context);
    double responsiveText = fontSize * scaleFactor;
    return responsiveText.clamp(fontSize * 0.8, fontSize * 1.2);
  }

  static double _getScaleFactor({required BuildContext context}) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 375) {
      return width / 400;
    } else if (width < 1042) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}
