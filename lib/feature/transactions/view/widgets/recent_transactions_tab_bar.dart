import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class RecentTransactionsTabBar extends StatefulWidget {
  const RecentTransactionsTabBar({super.key});

  @override
  State<RecentTransactionsTabBar> createState() =>
      _RecentTransactionsTabBarState();
}

class _RecentTransactionsTabBarState extends State<RecentTransactionsTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TabBar(
            labelPadding: const EdgeInsets.all(5),
            splashBorderRadius: BorderRadius.circular(20),
            controller: tabController,
            dividerHeight: 1,
            dividerColor: const Color(0xffEBEEF2),
            padding: const EdgeInsets.all(8),
            labelStyle: context.textStyle.textStyleSemibold16.copyWith(
              color: AppColor.primaryColor,
            ),
            unselectedLabelStyle: context.textStyle.textStyleSemibold16
                .copyWith(color: const Color(0xff718EBF)),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              const Text("All Transactions"),
              const Text("Income"),
              const Text("Expense"),
            ],
          ),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
