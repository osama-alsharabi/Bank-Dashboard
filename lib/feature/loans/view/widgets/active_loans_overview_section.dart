import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/loans/view/widgets/active_loans_overview_table.dart';
import 'package:flutter/material.dart';

class ActiveLoansOverviewSection extends StatelessWidget {
  const ActiveLoansOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Active Loans Overview",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 16),
        const ActiveLoansOverViewTable(),
      ],
    );
  }
}
