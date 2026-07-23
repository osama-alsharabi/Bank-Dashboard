import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

const List<String> tableHeader = [
  "SL No",
  "Loan Money",
  "Left to repay",
  "Duration",
  "Interest rate",
  "Installment",
  "Repay",
];
TableRow activeLoansTableHeader(BuildContext context) {
  return TableRow(
    children: tableHeader
        .map(
          (e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              e,
              style: context.textStyle.textStyleSemibold16.copyWith(
                color: AppColor.customSecondaryGreyColor,
              ),
            ),
          ),
        )
        .toList(),
  );
}
