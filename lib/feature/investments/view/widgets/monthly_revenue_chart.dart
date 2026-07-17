import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MonthlyRevenueChart extends StatelessWidget {
  const MonthlyRevenueChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 282,
      padding: const EdgeInsets.all(20),
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
                color: Color(0xffDCE5F3),
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

                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      years[value.toInt()],
                      style: const TextStyle(
                        color: Color(0xff6B86C6),
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
                reservedSize: 65,
                getTitlesWidget: (value, meta) {
                  return Text(
                    '\$${value.toInt()},000',
                    style: const TextStyle(
                      color: Color(0xff6B86C6),
                      fontSize: 14,
                    ),
                  );
                },
              ),
            ),
          ),

          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 10),
                FlSpot(0.5, 20),
                FlSpot(1, 11),
                FlSpot(1.5, 25),
                FlSpot(2.2, 32),
                FlSpot(2.8, 20),
                FlSpot(3.3, 28),
                FlSpot(4, 23),
                FlSpot(4.5, 14),
                FlSpot(5, 34),
              ],

              isCurved: true,

              curveSmoothness: 0.4,

              color: const Color(0xff17C9C4),

              barWidth: 4,

              dotData: const FlDotData(show: false),

              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}
