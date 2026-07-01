import 'package:bank_dashboard/core/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class OverviewDesktopLayout extends StatelessWidget {
  const OverviewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [CustomDrawer()]);
  }
}
