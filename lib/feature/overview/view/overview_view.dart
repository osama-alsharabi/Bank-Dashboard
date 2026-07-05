import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/expense_statistics_section.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_section.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/recent_transaction_section.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/weekly_activity_section.dart';
import 'package:flutter/material.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

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
          flexibleSpace: CustomAppBar(title: "Overview"),
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
                    Expanded(child: RecentTransactionSection()),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Row(
                  children: [
                    Expanded(flex: 2, child: WeeklyActivitySection()),
                    SizedBox(width: 25),
                    Expanded(flex: 1, child: ExpenseStatisticsSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
