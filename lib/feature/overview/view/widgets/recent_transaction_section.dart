import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class RecentTransactionSection extends StatelessWidget {
  const RecentTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Transaction ",
            style: context.textStyle.textStyleMedium18,
          ),
        ],
      ),
    );
  }
}
