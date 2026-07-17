import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class YearlyTotalInvestmentChart extends StatelessWidget {
  const YearlyTotalInvestmentChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 282,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 40,
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            drawVerticalLine: false,
            horizontalInterval: 10,
            getDrawingHorizontalLine: (value) {
              return const FlLine(
                color: Color(0xffE4EAF5),
                strokeWidth: 1,
                dashArray: [5, 5],
              );
            },
          ),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  const years = [
                    '2016',
                    '2017',
                    '2018',
                    '2019',
                    '2020',
                    '2021',
                  ];
                  if (value.toInt() >= years.length) {
                    return const SizedBox();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      years[value.toInt()],
                      style: const TextStyle(
                        color: Color(0xff6D8ACF),
                        fontSize: 14,
                      ),
                    ),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 10,
                reservedSize: 70,
                getTitlesWidget: (value, meta) {
                  return Text(
                    '\$${(value * 1000).toInt()},000',
                    style: const TextStyle(
                      color: Color(0xff6D8ACF),
                      fontSize: 14,
                    ),
                  );
                },
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: false,
              color: const Color(0xffFCAA0B),
              barWidth: 3,
              spots: const [
                FlSpot(0, 5),
                FlSpot(1, 23),
                FlSpot(2, 16),
                FlSpot(3, 36),
                FlSpot(4, 20),
                FlSpot(5, 29),
              ],
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, bar, index) {
                  return FlDotCirclePainter(
                    radius: 3,
                    color: Colors.white,
                    strokeWidth: 4,
                    strokeColor: const Color(0xffF59E0B),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
