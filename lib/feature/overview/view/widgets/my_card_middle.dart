import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class MyCardMiddle extends StatelessWidget {
  final bool isSelected;
  const MyCardMiddle({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.7,
              child: Text(
                "CARD HOLDER",
                style: context.textStyle.textStyleRegular10.copyWith(
                  color: isSelected ? Colors.white : null,
                ),
              ),
            ),
            Text(
              "Osama Alsharabi",
              style: context.textStyle.textStyleRegular10.copyWith(
                color: isSelected ? Colors.white : null,
              ),
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.7,
              child: Text(
                "VALID THRU",
                style: context.textStyle.textStyleRegular10.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "12/26",
              style: context.textStyle.textStyleRegular10.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
