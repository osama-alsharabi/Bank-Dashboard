import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/loans/data/active_loans_overview_table_data.dart';
import 'package:flutter/material.dart';

List<TableRow> activeLoansTableData(BuildContext context) =>
    ActiveLoansOverviewTableData.data
        .map(
          (e) => TableRow(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.3,
                  color: AppColor.customSecondaryGreyColor,
                ),
              ),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "${e.sLNo}",
                  style: context.textStyle.textStyleSemibold16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "\$${e.loanMoney.toStringAsFixed(0)}",
                  style: context.textStyle.textStyleSemibold16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "\$${e.leftToRepay.toStringAsFixed(0)}",
                  style: context.textStyle.textStyleSemibold16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  e.duration,
                  style: context.textStyle.textStyleSemibold16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "${e.interestRate}%",
                  style: context.textStyle.textStyleSemibold16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  e.installment,
                  style: context.textStyle.textStyleSemibold16,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(child: Text("Repay")),
              ),
            ],
          ),
        )
        .toList();
