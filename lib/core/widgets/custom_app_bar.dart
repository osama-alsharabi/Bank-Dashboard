import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 40),
          Text(
            title,
            style: context.textStyle.textStyleSemibold25.copyWith(
              color: AppColor.secondaryColor,
            ),
          ),
          const Spacer(flex: 3),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: AppColor.scaffoldBackgroundColor,
            ),
            child: Row(
              children: [
                SvgPicture.asset(AppAssets.iconsSearch, height: 20, width: 20),
                const SizedBox(width: 15),
                Text(
                  "Search for something",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 42),

          CircleAvatar(
            backgroundColor: AppColor.scaffoldBackgroundColor,
            child: SvgPicture.asset(
              AppAssets.iconsSettings,
              colorFilter: const ColorFilter.mode(
                AppColor.customSecondaryGreyColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 35),
          CircleAvatar(
            backgroundColor: AppColor.scaffoldBackgroundColor,
            child: SvgPicture.asset(AppAssets.iconsNotification),
          ),
          const SizedBox(width: 35),
          Image.asset(AppAssets.imagesUserProfile),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}
