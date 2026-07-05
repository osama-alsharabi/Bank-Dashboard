import 'package:bank_dashboard/feature/overview/view/widgets/quick_transfer_content_container.dart';
import 'package:flutter/material.dart';

class QuickTransferContainer extends StatelessWidget {
  const QuickTransferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 276,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const QuickTransferContentContainer(),
    );
  }
}
