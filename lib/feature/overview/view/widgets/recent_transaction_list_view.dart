import 'package:bank_dashboard/core/data/recent_transaction_data.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/recent_transaction_item.dart';
import 'package:flutter/material.dart';

class RecentTransactionListView extends StatelessWidget {
  const RecentTransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.builder(
        itemCount: RecentTransactionData.data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 15),
            child: RecentTransactionItem(
              recentTransactionModel: RecentTransactionData.data[index],
            ),
          );
        },
      ),
    );
  }
}
