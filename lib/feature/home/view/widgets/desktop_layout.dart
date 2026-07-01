import 'package:bank_dashboard/core/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [CustomDrawer()]);
  }
}
