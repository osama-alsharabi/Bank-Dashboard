import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/credit_cards/view/widgets/card_list_section_list_view.dart';
import 'package:flutter/material.dart';

class CardListSection extends StatelessWidget {
  const CardListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Card List",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const SizedBox(height: 16),
        const CardListSectionListView(),
      ],
    );
  }
}
