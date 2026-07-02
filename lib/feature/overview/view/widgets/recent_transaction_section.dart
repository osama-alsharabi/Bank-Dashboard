import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/recent_transaction_item.dart';
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
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
                child: RecentTransactionItem(),
              );
            },
          ),
        ),
      ],
    );
  }
}
