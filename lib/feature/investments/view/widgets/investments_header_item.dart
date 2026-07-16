import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/investments/model/investments_header_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InvestmentsHeaderItem extends StatelessWidget {
  final InvestmentsHeaderModel investmentsHeaderModel;
  const InvestmentsHeaderItem({
    super.key,
    required this.investmentsHeaderModel,
  });

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
            decoration: BoxDecoration(
              color: investmentsHeaderModel.color.withAlpha(50),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(
                investmentsHeaderModel.icon,
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
                investmentsHeaderModel.title,
                style: context.textStyle.textStyleRegular16.copyWith(
                  color: AppColor.customSecondaryGreyColor,
                ),
              ),
              Text(
                "\$${investmentsHeaderModel.amount.toStringAsFixed(0)}",
                style: context.textStyle.textStyleSemibold25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
