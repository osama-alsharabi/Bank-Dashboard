import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DebitAndCreditOverviewChart extends StatefulWidget {
  const DebitAndCreditOverviewChart({super.key});

  @override
  State<DebitAndCreditOverviewChart> createState() =>
      _DebitAndCreditOverviewChartState();
}

class _DebitAndCreditOverviewChartState
    extends State<DebitAndCreditOverviewChart> {
  BarChartGroupData _group(int x, double debit, double credit) {
    return BarChartGroupData(
      x: x,
      barsSpace: 14,
      barRods: [
        BarChartRodData(
          toY: debit,
          width: 30,
          color: const Color(0xff2E36F5),
          borderRadius: BorderRadius.circular(10),
        ),
        BarChartRodData(
          toY: credit,
          width: 30,
          color: const Color(0xffFFAE11),
          borderRadius: BorderRadius.circular(10),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "\$7,560",
                    style: context.textStyle.textStyleRegular16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Debited",
                    style: context.textStyle.textStyleRegular16.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "\$5,420",
                    style: context.textStyle.textStyleRegular16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Credited in this Week",
                    style: context.textStyle.textStyleRegular16.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: const Color(0xff2E36F5),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Debited",
                      style: context.textStyle.textStyleRegular16.copyWith(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: const Color(0xffFFAE11),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Credited",
                      style: context.textStyle.textStyleRegular16.copyWith(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 100,
                barGroups: [
                  _group(0, 58, 95),
                  _group(1, 36, 76),
                  _group(2, 34, 60),
                  _group(3, 86, 52),
                  _group(4, 64, 87),
                  _group(5, 67, 45),
                  _group(6, 76, 88),
                ],
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      getTitlesWidget: (value, meta) {
                        const days = [
                          "Sat",
                          "Sun",
                          "Mon",
                          "Tue",
                          "Wed",
                          "Thu",
                          "Fri",
                        ];
                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            days[value.toInt()],
                            style: const TextStyle(
                              color: Color(0xff8C97B8),
                              fontSize: 14,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
