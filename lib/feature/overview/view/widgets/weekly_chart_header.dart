import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class WeeklyChartHeader extends StatelessWidget {
  const WeeklyChartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        const CircleAvatar(radius: 6, backgroundColor: AppColor.successColor),
        const SizedBox(width: 6),
        Text(
          "Deposit",
          style: context.textStyle.textStyleRegular15.copyWith(
            color: AppColor.customGreyColor,
          ),
        ),
        const SizedBox(width: 30),
        const CircleAvatar(radius: 6, backgroundColor: AppColor.failureColor),
        const SizedBox(width: 6),
        Text(
          "Withdraw",
          style: context.textStyle.textStyleRegular15.copyWith(
            color: AppColor.customGreyColor,
          ),
        ),
      ],
    );
  }
}
