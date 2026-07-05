import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class QuickTransferUser extends StatelessWidget {
  const QuickTransferUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Image.asset(AppAssets.imagesUserProfile),
          const SizedBox(height: 15),
          Text(
            "Livia Bator",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: context.textStyle.textStyleSemibold16.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "CEO",
            style: context.textStyle.textStyleMedium13.copyWith(
              color: AppColor.customGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
