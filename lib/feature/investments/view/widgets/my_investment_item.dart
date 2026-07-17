import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/investments/model/my_investment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInvestmentItem extends StatelessWidget {
  final MyInvestmentModel myInvestmentModel;
  const MyInvestmentItem({super.key, required this.myInvestmentModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffFFE0EB),
            ),
            child: SvgPicture.asset(myInvestmentModel.icon),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myInvestmentModel.name,
                  style: context.textStyle.textStyleRegular16,
                ),
                Text(
                  myInvestmentModel.category,
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customGreyColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${myInvestmentModel.investmentValue.toStringAsFixed(0)}",
                  style: context.textStyle.textStyleRegular16,
                ),
                Text(
                  "Envestment Value",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customGreyColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myInvestmentModel.isPositive
                      ? r"+"
                            "${myInvestmentModel.returnPercentage}%"
                      : "-"
                            "${myInvestmentModel.returnPercentage}%",
                  style: context.textStyle.textStyleRegular16.copyWith(
                    color: myInvestmentModel.isPositive
                        ? AppColor.successColor
                        : AppColor.failureColor,
                  ),
                ),
                Text(
                  "Return Value",
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.customGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
