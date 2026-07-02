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
  TextStyle get textStyleMedium18 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 18,
      context: context,
    ),
  );
  TextStyle get textStyleMedium13 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 13,
      context: context,
    ),
  );
  TextStyle get textStyleRegular15 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 15,
      context: context,
    ),
  );
  TextStyle get textStyleSemibold16 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 16,
      context: context,
    ),
  );
  TextStyle get textStyleRegular11 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 11,
      context: context,
    ),
  );
  TextStyle get textStyleRegular10 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 10,
      context: context,
    ),
  );
  TextStyle get textStyleSemibold25 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 25,
      context: context,
    ),
  );
  TextStyle get textStyleSemibold18 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: TextResponsiveHelper.responsiveText(
      fontSize: 18,
      context: context,
    ),
  );
}

extension AppTextStyleExtension on BuildContext {
  AppTextStyle get textStyle => AppTextStyle(this);
}
