import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyExpansesChart extends StatelessWidget {
  const MyExpansesChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: BarChart(_chartData(context: context)),
          ),
          const Positioned(
            top: 0,
            right: 70,
            child: Text(
              '\$12,500',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff2F3B63),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartData _chartData({required BuildContext context}) {
    return BarChartData(
      minY: 0,
      maxY: 12,

      alignment: BarChartAlignment.spaceAround,

      borderData: FlBorderData(show: false),

      gridData: const FlGridData(show: false),

      barTouchData: BarTouchData(enabled: false),

      titlesData: FlTitlesData(
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),

        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),

        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),

        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
            getTitlesWidget: (value, meta) {
              const months = ['Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan'];

              return Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  months[value.toInt()],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff8EA3C7),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            },
          ),
        ),
      ),

      barGroups: [
        _bar(0, 7, context: context),
        _bar(1, 11, context: context),
        _bar(2, 7.2, context: context),
        _bar(3, 4, context: context),
        _bar(4, 10, selected: true, context: context),
        _bar(5, 6.5, context: context),
      ],
    );
  }

  BarChartGroupData _bar(
    int x,
    double y, {
    bool selected = false,
    required BuildContext context,
  }) {
    return BarChartGroupData(
      x: x,
      barsSpace: 0,
      barRods: [
        BarChartRodData(
          toY: y,
          width: MediaQuery.sizeOf(context).width * 0.02,
          color: selected ? const Color(0xff24D1C6) : const Color(0xffEEF2FA),
          borderRadius: BorderRadius.circular(10),
        ),
      ],
    );
  }
}
