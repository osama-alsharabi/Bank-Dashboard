import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/recent_transaction_list_view.dart';
import 'package:flutter/material.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Recent Transaction ", style: context.textStyle.textStyleMedium18),
        const SizedBox(height: 16),
        const RecentTransactionListView(),
      ],
    );
  }
}
