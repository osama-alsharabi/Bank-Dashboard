import 'package:bank_dashboard/core/data/drawer_data.dart';
import 'package:bank_dashboard/core/widgets/custom_drawer/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({super.key});

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: DrawerData.drawerData.length,
        itemBuilder: (context, index) {
          return CustomDrawerItem(
            isSelected: currentIndex == index,
            onTap: () {
              currentIndex = index;
              if (currentIndex == index) {}
              setState(() {});
            },
            drawerModel: DrawerData.drawerData[index],
          );
        },
      ),
    );
  }
}
