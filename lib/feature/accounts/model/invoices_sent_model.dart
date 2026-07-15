import 'dart:ui';

class InvoicesSentModel {
  final String icon;
  final String title;
  final String amount;
  final String time;
  final Color color;

  const InvoicesSentModel({
    required this.icon,
    required this.title,
    required this.amount,
    required this.time,
    required this.color,
  });
}
