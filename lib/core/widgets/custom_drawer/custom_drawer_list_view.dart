import 'package:bank_dashboard/core/cubit/change_ui_by_drawer/change_ui_by_drawer_cubit.dart';
import 'package:bank_dashboard/core/data/drawer_data.dart';
import 'package:bank_dashboard/core/widgets/custom_drawer/custom_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              if (currentIndex != index) {
                currentIndex = index;
                setState(() {});
                BlocProvider.of<ChangeUiByDrawerCubit>(
                  context,
                ).changeUI(uiType: DrawerData.drawerData[index].uiType);
              }
            },
            drawerModel: DrawerData.drawerData[index],
          );
        },
      ),
    );
  }
}
