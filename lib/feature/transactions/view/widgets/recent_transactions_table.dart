import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class RecentTransactionsTable extends StatefulWidget {
  const RecentTransactionsTable({super.key});

  @override
  State<RecentTransactionsTable> createState() =>
      _RecentTransactionsTableState();
}

class _RecentTransactionsTableState extends State<RecentTransactionsTable> {
  static const List<String> tableTitle = [
    "Description",
    "Transaction ID",
    "Type",
    "Card",
    "Date",
    "Amount",
    "Receipt",
  ];
  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
        horizontalInside: BorderSide(width: 1, color: Color(0xff718EBF)),
      ),
      children: [
        TableRow(
          children: tableTitle
              .map(
                (e) => Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 10),
                  child: Text(
                    e,
                    style: context.textStyle.textStyleSemibold16.copyWith(
                      color: const Color(0xff718EBF),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
