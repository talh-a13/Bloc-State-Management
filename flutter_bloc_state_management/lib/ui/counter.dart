import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter/counter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter/counter_event.dart';
import 'package:flutter_bloc_state_management/bloc/counter/counter_state.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Talha Counter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
            return Center(
              child: Text(
                state.counter.toString(),
                style: const TextStyle(fontSize: 60),
              ),
            );
          }),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("Increment"),
                onPressed: () {
                  context.read<CounterBloc>().add(incrementEvent());
                },
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                child: const Text("Decrement"),
                onPressed: () {
                  context.read<CounterBloc>().add(decrementEvent());
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
