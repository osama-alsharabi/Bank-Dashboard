import 'dart:ui';

class RecentTransactionModel {
  final String title;
  final String date;
  final String icon;
  final Color color;
  final bool isDeposit;

  RecentTransactionModel({
    required this.color,
    required this.title,
    required this.date,
    required this.icon,
    required this.isDeposit,
  });
}
