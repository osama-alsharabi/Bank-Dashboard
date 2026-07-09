import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

TableRow tableRowUiData(BuildContext context) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Row(
            children: [
              const FittedBox(
                fit: BoxFit.scaleDown,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Icon(
                    Icons.arrow_circle_down_outlined,
                    color: AppColor.customGreyColor,
                    size: 35,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  "Spotify Subscription",
                  overflow: TextOverflow.ellipsis,
                  style: context.textStyle.textStyleSemibold16,
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(
            "#12548796",
            style: context.textStyle.textStyleSemibold16,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text("Shopping", style: context.textStyle.textStyleSemibold16),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(
            "1234 ****",
            style: context.textStyle.textStyleSemibold16,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(
            "28 Jan, 12.30 AM",
            style: context.textStyle.textStyleSemibold16,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Center(
          child: Text(
            "-\$2,500",
            style: context.textStyle.textStyleSemibold16.copyWith(
              color: AppColor.failureColor,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: const Color(0xff123288)),
          ),
          child: const Center(child: Text("Download")),
        ),
      ),
    ],
  );
}
