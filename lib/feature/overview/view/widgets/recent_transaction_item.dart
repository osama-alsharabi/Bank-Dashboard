import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class RecentTransactionItem extends StatelessWidget {
  const RecentTransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: Colors.amberAccent.withAlpha(125)),
        const SizedBox(width: 8),
        Column(
          children: [
            Text("Deposit from my", style: context.textStyle.textStyleMedium13),
            Text(
              "28 January 2021",
              style: context.textStyle.textStyleRegular11.copyWith(
                color: AppColor.customSecondaryGreyColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          "-\$850",
          style: context.textStyle.textStyleMedium13.copyWith(
            color: AppColor.failureColor,
          ),
        ),
      ],
    );
  }
}
