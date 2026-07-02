import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_section.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/recent_transaction_section.dart';
import 'package:flutter/material.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomAppBar(title: "Overview"),
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(children: [MyCardSection(), RecentTransactionSection()]),
        ),
      ],
    );
  }
}
