import 'package:bank_dashboard/feature/accounts/view/widgets/invoices_sent_item.dart';
import 'package:flutter/material.dart';

class InvoicesSentContainer extends StatelessWidget {
  const InvoicesSentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const InvoicesSentItem();
        },
      ),
    );
  }
}
