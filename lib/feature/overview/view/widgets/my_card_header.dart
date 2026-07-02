import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class MyCardHeader extends StatelessWidget {
  final bool isSelected;
  const MyCardHeader({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balance",
              style: context.textStyle.textStyleRegular11.copyWith(
                color: isSelected ? Colors.white : null,
              ),
            ),
            Text(
              "\$5,756",
              style: context.textStyle.textStyleSemibold16.copyWith(
                color: isSelected ? Colors.white : null,
              ),
            ),
          ],
        ),

        Image.asset(
          AppAssets.iconsChipCard,
          height: 29,
          width: 29,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ],
    );
  }
}
