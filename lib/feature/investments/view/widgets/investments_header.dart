import 'package:bank_dashboard/feature/investments/data/investments_header_data.dart';
import 'package:bank_dashboard/feature/investments/view/widgets/investments_header_item.dart';
import 'package:flutter/material.dart';

class InvsetmentsHeader extends StatelessWidget {
  const InvsetmentsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: InvestmentsHeaderData.data
          .asMap()
          .entries
          .map(
            (e) => Expanded(
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: InvestmentsHeaderItem(investmentsHeaderModel: e.value),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
