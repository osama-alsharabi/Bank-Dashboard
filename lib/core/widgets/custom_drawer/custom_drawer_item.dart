import 'package:bank_dashboard/core/model/drawer_model.dart';
import 'package:bank_dashboard/core/utils/app_color.dart';
import 'package:bank_dashboard/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawerItem extends StatelessWidget {
  final bool isSelected;
  final void Function()? onTap;
  final DrawerModel drawerModel;
  const CustomDrawerItem({
    super.key,
    required this.drawerModel,
    this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            height: 60,
            width: 6,
            decoration: BoxDecoration(
              color: isSelected ? AppColor.primaryColor : null,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          const SizedBox(width: 44),
          SvgPicture.asset(
            drawerModel.icon,
            height: 25,
            width: 25,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColor.primaryColor : AppColor.customGreyColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 26),
          Text(
            drawerModel.title,
            style: context.textStyle.textStyleMedium18.copyWith(
              color: isSelected
                  ? AppColor.primaryColor
                  : AppColor.customGreyColor,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
