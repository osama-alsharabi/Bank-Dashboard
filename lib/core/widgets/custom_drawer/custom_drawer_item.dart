import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 6,
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        const SizedBox(width: 44),
        SvgPicture.asset(AppAssets.iconsHome, height: 25, width: 25),
        const SizedBox(width: 26),
        Text(
          "Dashboard",
          style: context.textStyle.textStyleMedium18.copyWith(
            color: AppColor.primaryColor,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
