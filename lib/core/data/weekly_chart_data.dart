import 'package:bank_dashboard/core/data/weekly_activity_data.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

abstract class WeeklyChartData {
  static BarChartData chartData({required BuildContext context}) {
    return BarChartData(
      maxY: 500,
      alignment: BarChartAlignment.spaceAround,
      groupsSpace: 20,
      borderData: FlBorderData(show: false),
      gridData: const FlGridData(
        drawVerticalLine: false,
        horizontalInterval: 100,
      ),
      titlesData: FlTitlesData(
        topTitles: const AxisTitles(),
        rightTitles: const AxisTitles(),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 100,
            reservedSize: 35,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              return Padding(
                padding: const EdgeInsets.only(),
                child: Text(
                  WeeklyActivityData.data[value.toInt()].day,
                  style: context.textStyle.textStyleMedium13.copyWith(
                    color: AppColor.customGreyColor,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      barGroups: List.generate(WeeklyActivityData.data.length, (index) {
        final item = WeeklyActivityData.data[index];
        return BarChartGroupData(
          x: index,
          barsSpace: 8,
          barRods: [
            BarChartRodData(
              toY: item.deposit,
              width: 12,
              color: const Color(0xff1814F3),
              borderRadius: BorderRadius.circular(10),
            ),
            BarChartRodData(
              toY: item.withdraw,
              width: 12,
              color: const Color(0xff16DBCC),
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        );
      }),
    );
  }
}
