import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState({this.counter = 0});

  CounterState copywith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }

  @override
  List<Object?> get props => [counter];
}

/*
It creates a copy of the current CounterState object but allows you to change the counter value if you want.
If you don't give a new counter, it will keep the old one (this.counter).
*/