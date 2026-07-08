import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BalanceHistoryChart extends StatefulWidget {
  const BalanceHistoryChart({super.key});

  @override
  State<BalanceHistoryChart> createState() => _BalanceHistoryChartState();
}

class _BalanceHistoryChartState extends State<BalanceHistoryChart> {
  static const spots = [
    FlSpot(0, 0),
    FlSpot(0.5, 320),
    FlSpot(1.3, 240),
    FlSpot(1.8, 480),
    FlSpot(2.5, 440),
    FlSpot(3, 780),
    FlSpot(4, 220),
    FlSpot(4.8, 570),
    FlSpot(5.7, 240),
    FlSpot(6.5, 640),
    FlSpot(7, 600),
  ];
  LineChartData data = LineChartData(
    baselineX: 0,
    baselineY: 800,
    showingTooltipIndicators: [],
    backgroundColor: Colors.white,
    borderData: FlBorderData(show: false),
    titlesData: const FlTitlesData(
      bottomTitles: AxisTitles(drawBelowEverything: false),
      topTitles: AxisTitles(drawBelowEverything: false),
      rightTitles: AxisTitles(drawBelowEverything: false),
    ),
    gridData: FlGridData(
      show: true,
      drawVerticalLine: true,
      horizontalInterval: 200,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return const FlLine(
          color: Color(0xffE8ECF5),
          strokeWidth: 1,
          dashArray: [5, 5],
        );
      },
      getDrawingVerticalLine: (value) {
        return const FlLine(
          color: Color(0xffE8ECF5),
          strokeWidth: 1,
          dashArray: [5, 5],
        );
      },
    ),
    lineBarsData: [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        color: Colors.blue,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        aboveBarData: BarAreaData(show: false),
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.withAlpha(80), Colors.blue.withAlpha(20)],
          ),
        ),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 276,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(child: LineChart(data)),
    );
  }
}
