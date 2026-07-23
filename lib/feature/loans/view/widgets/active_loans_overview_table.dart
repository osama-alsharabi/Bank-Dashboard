import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/feature/loans/view/widgets/active_loans_table_header.dart';
import 'package:flutter/material.dart';

class ActiveLoansOverViewTable extends StatelessWidget {
  const ActiveLoansOverViewTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Table(
        border: const TableBorder(
          bottom: BorderSide(
            width: 0.3,
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
        children: [activeLoansTableHeader(context)],
      ),
    );
  }
}
