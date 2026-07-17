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
    );
  }
}
