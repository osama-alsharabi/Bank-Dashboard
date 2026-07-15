import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InvoicesSentItem extends StatelessWidget {
  const InvoicesSentItem({super.key});

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
              color: const Color(0xffE5E5E5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(AppAssets.iconsAccountExpense),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apple Store",
                style: context.textStyle.textStyleSemibold16.copyWith(
                  color: const Color(0xffB1B1B1),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "5h ago",
                style: context.textStyle.textStyleRegular15.copyWith(
                  color: const Color(0xff718EBF),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "\$450",
            style: context.textStyle.textStyleSemibold16.copyWith(
              color: const Color(0xff718EBF),
            ),
          ),
        ],
      ),
    );
  }
}
