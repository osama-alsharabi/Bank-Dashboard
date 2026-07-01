import 'package:bank_dashboard/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(height: 36, width: 36, AppAssets.imagesLogo),
        const Text("BankDash"),
      ],
    );
  }
}
