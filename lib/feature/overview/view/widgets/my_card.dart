import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_bottom.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_header.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card_middle.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: MyCardHeader(),
            ),
            SizedBox(height: 23),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: MyCardMiddle(),
            ),
            SizedBox(height: 16),
            MyCardBottom(),
          ],
        ),
      ),
    );
  }
}
