import 'package:bank_dashboard/feature/transactions/view/widgets/recent_transactions_table.dart';
import 'package:flutter/material.dart';

class RecentTransactionsContainer extends StatelessWidget {
  const RecentTransactionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const RecentTransactionsTable(),
    );
  }
}
