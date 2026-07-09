import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/transactions/view/widgets/recent_transactions_container.dart';
import 'package:bank_dashboard/feature/transactions/view/widgets/recent_transactions_tab_bar.dart';
import 'package:flutter/material.dart';

class RecentTransactionsSection extends StatelessWidget {
  const RecentTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Recent Transactions",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 16),
        const RecentTransactionsTabBar(),
        const SizedBox(height: 25),
        const RecentTransactionsContainer(),
      ],
    );
  }
}
