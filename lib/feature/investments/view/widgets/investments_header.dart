import 'package:bank_dashboard/feature/investments/view/widgets/investments_header_item.dart';
import 'package:flutter/material.dart';

class InvsetmentsHeader extends StatelessWidget {
  const InvsetmentsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [InvestmentsHeaderItem()]);
  }
}
