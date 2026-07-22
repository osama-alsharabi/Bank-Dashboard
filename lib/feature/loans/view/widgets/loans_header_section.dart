import 'package:bank_dashboard/feature/loans/data/loans_header_data.dart';
import 'package:bank_dashboard/feature/loans/view/widgets/loans_header_item.dart';
import 'package:flutter/material.dart';

class LoansHeaderSection extends StatelessWidget {
  const LoansHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: LoansHeaderData.data
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding: EdgeInsets.symmetric(horizontal: e.key == 0 ? 0 : 15.0),
              child: const LoansHeaderItem(),
            ),
          )
          .toList(),
    );
  }
}
