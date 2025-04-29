import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter/counter_event.dart';
import 'package:flutter_bloc_state_management/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<incrementEvent>(_increment);
    on<decrementEvent>(_decrement);
  }
  void _increment(incrementEvent event, Emitter<CounterState> emit) {
    emit(state.copywith(counter: state.counter + 1));
  }

  void _decrement(decrementEvent event, Emitter<CounterState> emit) {
    emit(state.copywith(counter: state.counter - 1));
  }
}
