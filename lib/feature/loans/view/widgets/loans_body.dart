import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoandsBody extends StatelessWidget {
  const LoandsBody({super.key});

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
          flexibleSpace: CustomAppBar(title: "Loans"),
        ),
      ],
    );
  }
}
