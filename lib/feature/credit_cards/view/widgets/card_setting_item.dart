import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardSettingItem extends StatelessWidget {
  const CardSettingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SvgPicture.asset(AppAssets.iconsApple),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Block Card", style: context.textStyle.textStyleSemibold16),
            Text(
              "Instantly block your card",
              style: context.textStyle.textStyleRegular15.copyWith(
                color: AppColor.customSecondaryGreyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
