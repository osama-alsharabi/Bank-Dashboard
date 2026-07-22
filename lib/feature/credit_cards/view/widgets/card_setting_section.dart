import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CardSettingSection extends StatelessWidget {
  const CardSettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Setting",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
            ),
        ),
      ],
    );
  }
}
