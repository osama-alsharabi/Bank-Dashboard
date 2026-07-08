import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_section.dart';
import 'package:bank_dashboard/feature/transactions/view/widgets/my_expense_section.dart';
import 'package:bank_dashboard/feature/transactions/view/widgets/recent_transactions_section.dart';
import 'package:flutter/material.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: false,
          expandedHeight: 80,
          collapsedHeight: 80,
          toolbarHeight: 80,
          flexibleSpace: CustomAppBar(title: "Transactions"),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(flex: 2, child: MyCardSection()),
                    SizedBox(width: 25),
                    Expanded(child: MyExpenseSection()),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                child: RecentTransactionsSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
