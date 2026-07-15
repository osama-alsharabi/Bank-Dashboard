import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/accounts/view/widgets/invoices_sent_container.dart';
import 'package:flutter/material.dart';

class InvoicesSentSection extends StatelessWidget {
  const InvoicesSentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Invoices Sent",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 16),
        const SizedBox(height: 364, child: InvoicesSentContainer()),
      ],
    );
  }
}
