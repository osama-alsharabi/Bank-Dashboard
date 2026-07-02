import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_bottom.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_header.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_middle.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final bool isSelected;
  const MyCard({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 231 / 155,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20, top: 20),
              child: MyCardHeader(isSelected: isSelected),
            ),
            const SizedBox(height: 23),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyCardMiddle(isSelected: isSelected),
            ),
            const SizedBox(height: 16),
            MyCardBottom(isSelected: isSelected),
          ],
        ),
      ),
    );
  }
}
