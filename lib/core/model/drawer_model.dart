class DrawerModel {
  final String title;
  final String icon;
  bool isSelected;

  DrawerModel({
    required this.title,
    required this.icon,
    this.isSelected = false,
  });
}
