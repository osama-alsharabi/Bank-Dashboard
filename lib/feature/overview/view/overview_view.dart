import 'package:bank_dashboard/core/widgets/adaptive_widget.dart';
import 'package:bank_dashboard/feature/overview/view/widgets/overview_desktop_layout.dart';
import 'package:flutter/material.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveWidget(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const OverviewDesktopLayout(),
      ),
    );
  }
}
