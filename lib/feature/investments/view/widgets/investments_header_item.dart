import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InvestmentsHeaderItem extends StatelessWidget {
  const InvestmentsHeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff654121),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(
                AppAssets.iconsAccountExpense,
                width: 30,
                height: 30,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "accountsHeaderModel.title",
                style: context.textStyle.textStyleRegular16.copyWith(
                  color: AppColor.customSecondaryGreyColor,
                ),
              ),
              Text("\$55555", style: context.textStyle.textStyleSemibold25),
            ],
          ),
        ],
      ),
    );
  }
}

class InvsetmentsHeader extends StatelessWidget {
  const InvsetmentsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [InvestmentsHeaderItem()]);
  }
}
