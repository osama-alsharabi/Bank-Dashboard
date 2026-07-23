import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

TableRow activeLoansTableHeader(BuildContext context) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "SL No",
          style: context.textStyle.textStyleSemibold16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "Loan Money",
          style: context.textStyle.textStyleSemibold16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "Left to repay",
          style: context.textStyle.textStyleSemibold16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "Duration",
          style: context.textStyle.textStyleSemibold16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "Interest rate",
          style: context.textStyle.textStyleSemibold16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "Installment",
          style: context.textStyle.textStyleSemibold16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "Repay",
          style: context.textStyle.textStyleSemibold16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ),
    ],
  );
}
