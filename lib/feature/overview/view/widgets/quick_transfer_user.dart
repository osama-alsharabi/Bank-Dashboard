import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class QuickTransferUser extends StatelessWidget {
  const QuickTransferUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.imagesUserProfile),
        Text("Livia Bator", style: context.textStyle.textStyleSemibold16),
        Text(
          "CEO",
          style: context.textStyle.textStyleMedium13.copyWith(
            color: AppColor.customGreyColor,
          ),
        ),
      ],
    );
  }
}
