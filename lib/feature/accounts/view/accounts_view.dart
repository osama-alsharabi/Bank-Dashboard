import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/accounts_header.dart';
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
            ],
          ),
        ),
      ],
    );
  }
}
