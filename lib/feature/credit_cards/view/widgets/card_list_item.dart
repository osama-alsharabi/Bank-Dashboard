import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/credit_cards/model/card_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardListItem extends StatelessWidget {
  final CardListModel cardListModel;
  const CardListItem({super.key, required this.cardListModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
              color: cardListModel.color.withAlpha(30),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(
              AppAssets.iconsCreditCardCardList,
              colorFilter: ColorFilter.mode(
                cardListModel.color,
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Card Type",
                    style: context.textStyle.textStyleSemibold16,
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    cardListModel.cardType,
                    style: context.textStyle.textStyleRegular15.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Bank",
                    style: context.textStyle.textStyleSemibold16,
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    cardListModel.bank,
                    style: context.textStyle.textStyleRegular15.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Card Number",
                    style: context.textStyle.textStyleSemibold16,
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    cardListModel.cardNumber,
                    style: context.textStyle.textStyleRegular15.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Bank",
                    style: context.textStyle.textStyleSemibold16,
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  fit: BoxFit.scaleDown,

                  child: Text(
                    cardListModel.cardType,
                    style: context.textStyle.textStyleRegular15.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,

                  child: Text(
                    "Namain Card",
                    style: context.textStyle.textStyleSemibold16,
                  ),
                ),
                const SizedBox(height: 5),
                FittedBox(
                  fit: BoxFit.scaleDown,

                  child: Text(
                    cardListModel.namainCard,
                    style: context.textStyle.textStyleRegular15.copyWith(
                      color: AppColor.customSecondaryGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "View Details",
                style: context.textStyle.textStyleSemibold16.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
