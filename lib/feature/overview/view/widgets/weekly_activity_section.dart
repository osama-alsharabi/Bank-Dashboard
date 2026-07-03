import 'package:bank_dashboard/feature/overview/view/widgets/weekly_activity_header.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/weekly_chart_body.dart';
import 'package:flutter/material.dart';

class WeeklyActivitySection extends StatelessWidget {
  const WeeklyActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WeeklyActivityHeader(),
        SizedBox(height: 18),
        WeeklyChartBody(),
      ],
    );
  }
}
