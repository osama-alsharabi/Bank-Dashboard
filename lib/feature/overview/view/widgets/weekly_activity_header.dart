import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class WeeklyActivityHeader extends StatelessWidget {
  const WeeklyActivityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Weekly Activity",
      style: context.textStyle.textStyleSemibold22.copyWith(
        color: AppColor.secondaryColor,
      ),
    );
  }
}
