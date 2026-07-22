import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/credit_cards/model/card_setting_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardSettingItem extends StatelessWidget {
  final CardSettingModel cardSettingModel;
  const CardSettingItem({super.key, required this.cardSettingModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: cardSettingModel.color.withAlpha(50),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SvgPicture.asset(cardSettingModel.icon),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardSettingModel.title,
              style: context.textStyle.textStyleSemibold16,
            ),
            Text(
              cardSettingModel.description,
              style: context.textStyle.textStyleRegular15.copyWith(
                color: AppColor.customSecondaryGreyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
