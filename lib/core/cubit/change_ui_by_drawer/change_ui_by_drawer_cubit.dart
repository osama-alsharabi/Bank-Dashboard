import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_ui_by_drawer_state.dart';

class ChangeUiByDrawerCubit extends Cubit<ChangeUiByDrawerState> {
  ChangeUiByDrawerCubit() : super(ChangeUiByDrawerInitial());
}
