import 'package:bank_dashboard/feature/accounts/data/last_transaction_data.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/last_transaction_item.dart';
import 'package:flutter/material.dart';

class LastTransactionContainer extends StatelessWidget {
  const LastTransactionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      height: 235,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListView.builder(
        itemCount: LastTransactionData.data.length,
        itemBuilder: (context, index) {
          return LastTransactionItem(
            lastTransactionModel: LastTransactionData.data[index],
          );
        },
      ),
    );
  }
}
