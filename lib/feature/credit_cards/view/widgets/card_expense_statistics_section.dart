import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/credit_cards/view/widgets/card_expense_statistics_chart.dart';
import 'package:flutter/material.dart';

class CardExpenseStatisticsSection extends StatelessWidget {
  const CardExpenseStatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card Expense Statistics",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 16),
        const CardExpenseStatisticsChart(),
      ],
    );
  }
}
