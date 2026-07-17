import 'package:flutter/material.dart';

class MyInvestmentModel {
  final String name;
  final String category;
  final String icon;
  final Color color;
  final double investmentValue;
  final double returnPercentage;
  final bool isPositive;

  const MyInvestmentModel({
    required this.color,
    required this.name,
    required this.category,
    required this.icon,
    required this.investmentValue,
    required this.returnPercentage,
    required this.isPositive,
  });
}
