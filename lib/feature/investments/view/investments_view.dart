import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:bank_dashboard/feature/investments/view/widgets/investments_header.dart';
import 'package:bank_dashboard/feature/investments/view/widgets/yearly_total_investment_section.dart';
import 'package:flutter/material.dart';

class InvestmentsView extends StatelessWidget {
  const InvestmentsView({super.key});

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
          flexibleSpace: CustomAppBar(title: "Investments"),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: InvsetmentsHeader(),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: YearlyTotalInvestmentSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
