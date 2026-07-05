import 'package:bank_dashboard/feature/overview/view/widgets/quick_transfer_arrow_list_users.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/quick_transfer_list_users.dart';
import 'package:flutter/material.dart';

class QuickTransferContentContainer extends StatelessWidget {
  const QuickTransferContentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(child: QuickTransferListUsers()),
            QuickTransferArrowListUsers(),
          ],
        ),
      ],
    );
  }
}
