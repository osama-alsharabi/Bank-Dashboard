import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LastTransactionItem extends StatelessWidget {
  const LastTransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(AppAssets.iconsAccountExpense),
          ),
          const SizedBox(width: 25),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Expense", style: context.textStyle.textStyleSemibold16),
                  const SizedBox(height: 5),
                  Text(
                    "Today, 16 Mar 2023",
                    style: context.textStyle.textStyleRegular15.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  "type",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  "card number",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  "status",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Center(
              child: FittedBox(
                child: Text(
                  "amount",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customSecondaryGreyColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
