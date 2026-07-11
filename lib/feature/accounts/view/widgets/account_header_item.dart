import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountHeaderItem extends StatelessWidget {
  const AccountHeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber.withAlpha(50),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(
                AppAssets.iconsAccounts,
                width: 30,
                height: 30,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            children: [
              Text(
                "My Balance",
                style: context.textStyle.textStyleRegular16.copyWith(
                  color: AppColor.customSecondaryGreyColor,
                ),
              ),
              Text("\$12,750", style: context.textStyle.textStyleSemibold25),
            ],
          ),
        ],
      ),
    );
  }
}
