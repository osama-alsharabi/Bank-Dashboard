import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

TableRow trendingStrockTableHeader(BuildContext context) {
  return TableRow(
    children: [
      Text(
        "SL No",
        style: context.textStyle.textStyleRegular16.copyWith(
          color: const Color(0xff718EBF),
        ),
      ),
      Text(
        "Name",
        style: context.textStyle.textStyleRegular16.copyWith(
          color: const Color(0xff718EBF),
        ),
      ),
      Text(
        "Price",
        style: context.textStyle.textStyleRegular16.copyWith(
          color: const Color(0xff718EBF),
        ),
      ),
      Text(
        "Return",
        style: context.textStyle.textStyleRegular16.copyWith(
          color: const Color(0xff718EBF),
        ),
      ),
    ],
  );
}
