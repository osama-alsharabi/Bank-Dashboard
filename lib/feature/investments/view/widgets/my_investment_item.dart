import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInvestmentItem extends StatelessWidget {
  const MyInvestmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffFFE0EB),
            ),
            child: SvgPicture.asset(AppAssets.iconsAccountExpense),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Apple Store",
                  style: context.textStyle.textStyleRegular16,
                ),
                Text(
                  "E-commerce, Marketplace",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customGreyColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\$54,000", style: context.textStyle.textStyleRegular16),
                Text(
                  "Envestment Value",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customGreyColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "+16%",
                  style: context.textStyle.textStyleRegular16.copyWith(
                    color: AppColor.successColor,
                  ),
                ),
                Text(
                  "Return Value",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customGreyColor,
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
