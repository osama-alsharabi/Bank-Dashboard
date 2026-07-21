import 'dart:math';

import 'package:flutter/material.dart';

class CardExpenseStatisticsChart extends StatefulWidget {
  const CardExpenseStatisticsChart({super.key});

  @override
  State<CardExpenseStatisticsChart> createState() =>
      _CardExpenseStatisticsChartState();
}

class _CardExpenseStatisticsChartState extends State<CardExpenseStatisticsChart>
    with SingleTickerProviderStateMixin {
  int? hoverIndex;

  final List<ChartData> data = [
    ChartData(title: "DBL Bank", value: 25, color: const Color(0xff5076F5)),
    ChartData(title: "ABM Bank", value: 25, color: const Color(0xff22C7C2)),
    ChartData(title: "BRC Bank", value: 25, color: const Color(0xffF779A8)),
    ChartData(title: "MCP Bank", value: 25, color: const Color(0xffFFB938)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Column(
        children: [
          Expanded(
            child: MouseRegion(
              onHover: (event) {
                const center = Offset(140, 110);

                final dx = event.localPosition.dx - center.dx;
                final dy = event.localPosition.dy - center.dy;

                double angle = atan2(dy, dx) + pi / 2;

                if (angle < 0) {
                  angle += 2 * pi;
                }

                int index = (angle / (pi / 2)).floor();

                setState(() {
                  hoverIndex = index;
                });
              },

              onExit: (_) {
                setState(() {
                  hoverIndex = null;
                });
              },

              child: CustomPaint(
                size: const Size(230, 230),
                painter: DonutPainter(data: data, hoverIndex: hoverIndex),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LegendItem(data[0]),
                  const SizedBox(height: 20),
                  LegendItem(data[1]),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LegendItem(data[2]),
                  const SizedBox(height: 20),
                  LegendItem(data[3]),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DonutPainter extends CustomPainter {
  final List<ChartData> data;
  final int? hoverIndex;

  DonutPainter({required this.data, required this.hoverIndex});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    const radius = 80.0;

    double startAngle = -pi / 2;

    for (int i = 0; i < data.length; i++) {
      final sweep = (data[i].value / 100) * 2 * pi;

      final isHover = hoverIndex == i;

      final currentRadius = isHover ? radius + 12 : radius;

      final paint = Paint()
        ..color = data[i].color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 55
        ..strokeCap = StrokeCap.butt;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: currentRadius),
        startAngle,

        sweep - 0.04,

        false,

        paint,
      );

      startAngle += sweep;
    }

    // inner circle
    canvas.drawCircle(center, 38, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(DonutPainter oldDelegate) {
    return true;
  }
}

class ChartData {
  final String title;
  final double value;
  final Color color;

  ChartData({required this.title, required this.value, required this.color});
}

class LegendItem extends StatelessWidget {
  final ChartData data;

  const LegendItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(shape: BoxShape.circle, color: data.color),
        ),

        const SizedBox(width: 15),

        Text(
          data.title,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff7188B8),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
