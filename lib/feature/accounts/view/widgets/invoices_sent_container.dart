import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvoicesSentContainer extends StatelessWidget {
  const InvoicesSentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: const Color(0xffE5E5E5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(AppAssets.iconsAccountExpense),
          ),
        ],
      ),
    );
  }
}
