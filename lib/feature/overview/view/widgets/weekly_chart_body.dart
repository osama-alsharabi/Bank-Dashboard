import 'package:bank_dashboard/core/data/weekly_chart_data.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/weekly_chart_header.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChartBody extends StatelessWidget {
  const WeeklyChartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WeeklyChartHeader(),
          const SizedBox(height: 30),
          SizedBox(
            height: 250,
            child: BarChart(WeeklyChartData.chartData(context: context)),
          ),
        ],
      ),
    );
  }
}
