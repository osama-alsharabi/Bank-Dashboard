import 'package:bank_dashboard/core/cubit/change_ui_by_drawer/change_ui_by_drawer_cubit.dart';
import 'package:bank_dashboard/core/interface/sealed_ui_type.dart';
import 'package:bank_dashboard/core/widgets/adaptive_widget.dart';
import 'package:bank_dashboard/feature/home/view/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChangeUiByDrawerCubit()..changeUI(uiType: Overview()),
      child: Scaffold(
        body: AdaptiveWidget(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DesktopLayout(),
        ),
      ),
    );
  }
}
