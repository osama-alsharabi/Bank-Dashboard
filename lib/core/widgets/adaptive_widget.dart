import 'package:bank_dashboard/core/utils/app_const.dart';
import 'package:flutter/material.dart';

class AdaptiveWidget extends StatelessWidget {
  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder desktopLayout;
  const AdaptiveWidget({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= AppConst.mobileLayout) {
          return mobileLayout(context);
        } else if (constraints.maxWidth <= AppConst.tabletLayout) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
