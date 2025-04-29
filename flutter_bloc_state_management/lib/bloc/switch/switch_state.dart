import 'package:equatable/equatable.dart';

class SwitchStates extends Equatable {
  bool isSwitch;
  SwitchStates({this.isSwitch = false});
  SwitchStates copywith({bool? isSwitch}) {
    return SwitchStates(isSwitch: isSwitch ?? this.isSwitch);
  }

  @override
  List<Object?> get props => [isSwitch];
}
