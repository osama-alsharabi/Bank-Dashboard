import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

TableRow trendingStrockTableHeader(BuildContext context) {
  return TableRow(
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(width: 1, color: Color(0xffF4F5F7))),
    ),
    children: [
      Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          "SL No",
          style: context.textStyle.textStyleRegular16.copyWith(
            color: const Color(0xff718EBF),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          "Name",
          style: context.textStyle.textStyleRegular16.copyWith(
            color: const Color(0xff718EBF),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          "Price",
          style: context.textStyle.textStyleRegular16.copyWith(
            color: const Color(0xff718EBF),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          "Return",
          style: context.textStyle.textStyleRegular16.copyWith(
            color: const Color(0xff718EBF),
          ),
        ),
      ),
    ],
  );
}
