import 'package:bank_dashboard/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [CustomAppBar(title: "Overview")],
    );
  }
}
