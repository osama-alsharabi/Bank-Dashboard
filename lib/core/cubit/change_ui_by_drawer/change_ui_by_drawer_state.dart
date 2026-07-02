part of 'change_ui_by_drawer_cubit.dart';

@immutable
sealed class ChangeUiByDrawerState {}

final class ChangeUiByDrawerInitial extends ChangeUiByDrawerState {}

final class ChangeUiByDrawer extends ChangeUiByDrawerState {
  final SealedUiType uiType;

  ChangeUiByDrawer({required this.uiType});
}
