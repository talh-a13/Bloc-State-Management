import 'package:equatable/equatable.dart';

class SwitchStates extends Equatable {
  bool isSwitch;
  double slidervalue;
  SwitchStates({this.isSwitch = false, this.slidervalue = 1.0});
  SwitchStates copywith({bool? isSwitch, double? slidervalue}) {
    return SwitchStates(
        isSwitch: isSwitch ?? this.isSwitch,
        slidervalue: slidervalue ?? this.slidervalue);
  }

  @override
  List<Object?> get props => [isSwitch, slidervalue];
}
