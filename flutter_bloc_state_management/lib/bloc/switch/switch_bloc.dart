import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_event.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<EnableorDisableNotification>(_enableorDisableNotification);
  }
  void _enableorDisableNotification(
      EnableorDisableNotification event, Emitter<SwitchStates> emit) {
    emit(state.copywith(isSwitch: !state.isSwitch));
  }
}
