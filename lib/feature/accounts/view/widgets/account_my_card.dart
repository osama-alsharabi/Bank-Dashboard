import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card.dart';
import 'package:flutter/material.dart';

class AccountMyCard extends StatelessWidget {
  const AccountMyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Card",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 16),
        const SizedBox(height: 235, child: MyCard(isSelected: true)),
      ],
    );
  }
}
