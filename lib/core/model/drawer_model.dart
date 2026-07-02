import 'package:bank_dashboard/core/interface/sealed_ui_type.dart';

class DrawerModel {
  final String title;
  final String icon;
  final SealedUiType uiType;

  DrawerModel({required this.title, required this.icon ,required this.uiType});
}
