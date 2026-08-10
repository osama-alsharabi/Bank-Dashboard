import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:bank_dashboard/feature/services/model/services_header_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServicesItemHeader extends StatelessWidget {
  final ServicesHeaderModel servicesHeaderModel;
  const ServicesItemHeader({super.key, required this.servicesHeaderModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: servicesHeaderModel.color.withAlpha(50),
              ),
              child: SvgPicture.asset(servicesHeaderModel.icon),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  servicesHeaderModel.title,
                  style: context.textStyle.textStyleSemibold18,
                ),
                Text(
                  servicesHeaderModel.description,
                  style: context.textStyle.textStyleRegular15.copyWith(
                    color: AppColor.secondaryColor.withAlpha(50),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
