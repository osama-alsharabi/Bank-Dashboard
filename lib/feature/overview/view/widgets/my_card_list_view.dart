import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/my_card.dart';
import 'package:flutter/material.dart';

class MyCardListView extends StatelessWidget {
  const MyCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Cards",
              style: context.textStyle.textStyleSemibold18.copyWith(
                color: AppColor.secondaryColor,
              ),
            ),
            Text(
              "See All",
              style: context.textStyle.textStyleRegular15.copyWith(
                color: AppColor.secondaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: index == 0 ? 0 : 25.0,
                ),
                child: const MyCard(),
              );
            },
          ),
        ),
      ],
    );
  }
}
