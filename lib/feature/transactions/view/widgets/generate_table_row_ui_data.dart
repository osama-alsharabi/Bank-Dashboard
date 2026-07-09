import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/transactions/models/recent_trasaction_table_model.dart';
import 'package:flutter/material.dart';

TableRow generateTableRowUiData({
  required BuildContext context,
  required RecentTrasactionTableModel data,
}) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Row(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Icon(
                    data.isIncome
                        ? Icons.arrow_circle_up_outlined
                        : Icons.arrow_circle_down_outlined,
                    color: AppColor.customGreyColor,
                    size: 35,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  data.description,
                  overflow: TextOverflow.ellipsis,
                  style: context.textStyle.textStyleRegular16,
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(
            data.transactionID,
            style: context.textStyle.textStyleRegular16,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(data.type, style: context.textStyle.textStyleRegular16),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(data.card, style: context.textStyle.textStyleRegular16),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(data.date, style: context.textStyle.textStyleRegular16),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(
            data.isIncome ? "+\$${data.amount}" : "-\$${data.amount}",
            style: context.textStyle.textStyleRegular16.copyWith(
              color: data.isIncome
                  ? AppColor.successColor
                  : AppColor.failureColor,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: const Color(0xff123288)),
          ),
          child: Center(
            child: Text(
              "Download",
              style: context.textStyle.textStyleRegular16,
            ),
          ),
        ),
      ),
    ],
  );
}
