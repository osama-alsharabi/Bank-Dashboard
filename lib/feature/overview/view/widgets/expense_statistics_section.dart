import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/expense_statistics_chart.dart';
import 'package:flutter/material.dart';

class ExpenseStatisticsSection extends StatelessWidget {
  const ExpenseStatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Expense Statistics',
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 16),
        const ExpenseStatisticsChart(),
      ],
    );
  }
}
