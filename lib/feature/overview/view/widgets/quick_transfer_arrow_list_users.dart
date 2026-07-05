import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class QuickTransferArrowListUsers extends StatelessWidget {
  const QuickTransferArrowListUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColor.customSecondaryGreyColor,
            ),
          ),
        ),
      ),
    );
  }
}
