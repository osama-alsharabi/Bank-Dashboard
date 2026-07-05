import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseStatisticsChart extends StatefulWidget {
  const ExpenseStatisticsChart({super.key});

  @override
  State<ExpenseStatisticsChart> createState() => _ExpenseStatisticsChartState();
}

class _ExpenseStatisticsChartState extends State<ExpenseStatisticsChart> {
  PieChartData data = PieChartData(
    pieTouchData: PieTouchData(),
    sections: [
      PieChartSectionData(
        titleStyle: const TextStyle(color: Colors.white),
        title: "15% \n Bill Expense",
        radius: 125,
        value: 15,
        color: const Color(0xffFC7900),
      ),
      PieChartSectionData(
        titleStyle: const TextStyle(color: Colors.white),
        title: "35% \n Others",
        radius: 125,
        value: 35,
        color: const Color(0xff1814F3),
      ),
      PieChartSectionData(
        titleStyle: const TextStyle(color: Colors.white),
        title: "20% \n Investment",
        radius: 125,
        value: 20,
        color: const Color(0xffFA00FF),
      ),
      PieChartSectionData(
        titleStyle: const TextStyle(color: Colors.white),
        title: "30% \n Entertainment",
        radius: 125,
        value: 30,
        color: const Color(0xff343C6A),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: PieChart(data),
    );
  }
}
