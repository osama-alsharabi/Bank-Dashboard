import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class QuickTransferBottomSection extends StatelessWidget {
  const QuickTransferBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Write Amount",
          style: context.textStyle.textStyleRegular15.copyWith(
            color: AppColor.customGreyColor,
          ),
        ),
      ],
    );
  }
}
