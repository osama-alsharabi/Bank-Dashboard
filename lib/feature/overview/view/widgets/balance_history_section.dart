import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/balance_history_chart.dart';
import 'package:flutter/material.dart';

class BalanceHistorySection extends StatelessWidget {
  const BalanceHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Balance History",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const BalanceHistoryChart(),
      ],
    );
  }
}
