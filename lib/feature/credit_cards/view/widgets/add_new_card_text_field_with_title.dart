import 'dart:math';

import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class AddNewCardTextFieldWithTitle extends StatelessWidget {
  final String title, hint;
  final bool hasArrowIcon;
  const AddNewCardTextFieldWithTitle({
    super.key,
    required this.title,
    required this.hint,
    required this.hasArrowIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Card Type", style: context.textStyle.textStyleRegular16),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: AppColor.customSecondaryGreyColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Classic",
                style: context.textStyle.textStyleRegular16.copyWith(
                  color: AppColor.customSecondaryGreyColor,
                ),
              ),
              if (hasArrowIcon)
                Transform.rotate(
                  angle: -pi / 2,
                  child: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
