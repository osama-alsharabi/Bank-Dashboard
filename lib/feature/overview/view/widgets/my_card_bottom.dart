import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCardBottom extends StatelessWidget {
  final bool isSelected;
  const MyCardBottom({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Opacity(
            opacity: 0.15,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.transparent],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2065********4354',
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: isSelected ? Colors.white : null,
                  ),
                ),
                SvgPicture.asset(
                  AppAssets.iconsVisaIcon,
                  colorFilter: const ColorFilter.mode(
                    AppColor.customGreyColor,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
