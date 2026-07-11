import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class PreviousAndNextRecentTrasactions extends StatelessWidget {
  const PreviousAndNextRecentTrasactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColor.primaryColor,
          ),
          Text(
            "Previous",
            style: context.textStyle.textStyleRegular15.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 150,
            height: 40,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 11,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: index == 0 ? AppColor.primaryColor : null,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    (index + 1).toString(),
                    style: context.textStyle.textStyleMedium13.copyWith(
                      color: index == 0 ? Colors.white : AppColor.primaryColor,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 12),
          Text(
            "Next",
            style: context.textStyle.textStyleRegular15.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
          const Directionality(
            textDirection: TextDirection.rtl,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
