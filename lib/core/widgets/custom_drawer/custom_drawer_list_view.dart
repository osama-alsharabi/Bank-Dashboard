import 'package:bank_dashboard/core/widgets/custom_drawer/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const CustomDrawerItem();
        },
      ),
    );
  }
}
