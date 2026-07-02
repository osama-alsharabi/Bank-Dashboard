import 'package:bank_dashboard/core/cubit/change_ui_by_drawer/change_ui_by_drawer_cubit.dart';
import 'package:bank_dashboard/core/interface/sealed_ui_type.dart';
import 'package:bank_dashboard/core/widgets/custom_drawer/custom_drawer.dart';
import 'package:bank_dashboard/feature/overview/view/overview_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [CustomDrawer(), BodyBlocBuilder()]);
  }
}

class BodyBlocBuilder extends StatelessWidget {
  const BodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeUiByDrawerCubit, ChangeUiByDrawerState>(
      builder: (context, state) {
        if (state is ChangeUiByDrawer) {
          switch (state.uiType) {
            case Overview():
              return const Expanded(child: OverviewView());

            case Transactions():
              return const SizedBox();
            case Accounts():
              return const SizedBox();
            case Investments():
              return const SizedBox();
            case CreditCards():
              return const SizedBox();
            case Loans():
              return const SizedBox();
            case Services():
              return const SizedBox();
            case MyPrivileges():
              return const SizedBox();
            case Setting():
              return const SizedBox();
          }
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
