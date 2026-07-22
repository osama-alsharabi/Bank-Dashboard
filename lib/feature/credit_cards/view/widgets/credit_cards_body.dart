import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/credit_cards/view/widgets/add_new_card_section.dart';
import 'package:bank_dashboard/feature/credit_cards/view/widgets/card_expense_statistics_section.dart';
import 'package:bank_dashboard/feature/credit_cards/view/widgets/card_list_section.dart';
import 'package:bank_dashboard/feature/credit_cards/view/widgets/card_setting_section.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_section.dart';
import 'package:flutter/material.dart';

class CreditCardsBody extends StatelessWidget {
  const CreditCardsBody({super.key});

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
          flexibleSpace: CustomAppBar(title: "Credit Cards"),
        ),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 16),
                MyCardSection(),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: CardExpenseStatisticsSection()),
                    SizedBox(width: 16),
                    Expanded(flex: 2, child: CardListSection()),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(flex: 2, child: AddNewCardSection()),
                    SizedBox(width: 16),
                    Expanded(child: CardSettingSection()),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
