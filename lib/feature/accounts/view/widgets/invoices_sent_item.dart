import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/accounts/model/invoices_sent_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InvoicesSentItem extends StatelessWidget {
  final InvoicesSentModel invoicesSentModel;
  const InvoicesSentItem({super.key, required this.invoicesSentModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: invoicesSentModel.color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(invoicesSentModel.icon),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                invoicesSentModel.title,
                style: context.textStyle.textStyleSemibold16.copyWith(
                  color: const Color(0xffB1B1B1),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                invoicesSentModel.time,
                style: context.textStyle.textStyleRegular15.copyWith(
                  color: const Color(0xff718EBF),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            invoicesSentModel.amount,
            style: context.textStyle.textStyleSemibold16.copyWith(
              color: const Color(0xff718EBF),
            ),
          ),
        ],
      ),
    );
  }
}
