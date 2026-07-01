import 'package:bank_dashboard/core/helper/text_responsive_helper.dart';
import 'package:flutter/widgets.dart';

class AppTextStyle {
  final BuildContext context;
  AppTextStyle(this.context);

  TextStyle get textStyleRegular25 => TextStyle(
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 25,
      context: context,
    ),
  );
}

extension AppTextStyleExtension on BuildContext {
  AppTextStyle get textStyle => AppTextStyle(this);
}
