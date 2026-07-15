import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/account_my_card.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/accounts_header.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/debit_and_credit_overview_section.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/last_transaction_section.dart';
import 'package:flutter/material.dart';

class AccountsView extends StatelessWidget {
  const AccountsView({super.key});

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
          flexibleSpace: CustomAppBar(title: "Accounts"),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 30,
                  right: 16,
                  left: 16,
                  bottom: 23,
                ),
                child: AccountsHeader(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(flex: 2, child: LastTransactionSection()),
                    SizedBox(width: 30),
                    Expanded(child: AccountMyCard()),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(flex: 2, child: DebitAndCreditOverviewSection()),
                    SizedBox(width: 30),
                    Expanded(child: SizedBox()),
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
