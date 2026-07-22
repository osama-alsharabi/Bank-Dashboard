import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/loans/model/loans_header_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoansHeaderItem extends StatelessWidget {
  final LoansHeaderModel loansHeaderModel;
  const LoansHeaderItem({super.key, required this.loansHeaderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: loansHeaderModel.color.withAlpha(50),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(
                AppAssets.iconsAccountExpense,
                width: 30,
                height: 30,
                colorFilter: ColorFilter.mode(
                  loansHeaderModel.color,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                loansHeaderModel.title,
                style: context.textStyle.textStyleRegular16.copyWith(
                  color: AppColor.customSecondaryGreyColor,
                ),
              ),
              Text(
                "\$${loansHeaderModel.price.toStringAsFixed(0)}",
                style: context.textStyle.textStyleSemibold25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
