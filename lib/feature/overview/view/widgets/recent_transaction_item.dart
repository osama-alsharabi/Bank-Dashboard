import 'package:bank_dashboard/core/model/recent_transaction_model.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentTransactionItem extends StatelessWidget {
  final RecentTransactionModel recentTransactionModel;
  const RecentTransactionItem({
    super.key,
    required this.recentTransactionModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: recentTransactionModel.color.withAlpha(80),
          child: SvgPicture.asset(
            recentTransactionModel.icon,
            width: 14.46,
            height: 16.25,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recentTransactionModel.title,
              style: context.textStyle.textStyleMedium13,
            ),
            Text(
              recentTransactionModel.date,
              style: context.textStyle.textStyleRegular11.copyWith(
                color: AppColor.customSecondaryGreyColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          "-\$${recentTransactionModel.price}",
          style: context.textStyle.textStyleMedium13.copyWith(
            color: recentTransactionModel.isDeposit
                ? AppColor.failureColor
                : AppColor.successColor,
          ),
        ),
      ],
    );
  }
}
