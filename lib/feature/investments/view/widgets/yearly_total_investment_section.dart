import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/investments/view/widgets/yearly_total_investment_chart.dart';
import 'package:flutter/material.dart';

class YearlyTotalInvestmentSection extends StatelessWidget {
  const YearlyTotalInvestmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Yearly Total Investment",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const YearlyTotalInvestmentChart(),
      ],
    );
  }
}
