import 'package:bank_dashboard/feature/overview/view/widgets/quick_transfer_user.dart';
import 'package:flutter/material.dart';

class QuickTransferListUsers extends StatelessWidget {
  const QuickTransferListUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 127,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 17.5, left: 17.5),
            child: QuickTransferUser(),
          );
        },
      ),
    );
  }
}
