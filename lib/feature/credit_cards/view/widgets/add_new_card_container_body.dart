import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class AddNewCardContainerBody extends StatelessWidget {
  const AddNewCardContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Credit Card generally means a plastic card issued by Scheduled Commercial Banks assigned to a Cardholder, with a credit limit, that can be used to purchase goods and services on credit or obtain cash advances.",
          style: context.textStyle.textStyleRegular16.copyWith(
            color: AppColor.customSecondaryGreyColor,
          ),
        ),
      ],
    );
  }
}
