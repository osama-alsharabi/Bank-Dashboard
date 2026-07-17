import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/investments/view/widgets/trending_stock_container.dart';
import 'package:flutter/material.dart';

class TrendingStockSection extends StatelessWidget {
  const TrendingStockSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trending Stock",
          style: context.textStyle.textStyleSemibold22.copyWith(
            color: AppColor.secondaryColor,
          ),
        ),
        const TrendingStockContainer(),
      ],
    );
  }
}
