import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_event.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_state.dart';

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
        title: const Text("Talha Switch App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Notification"),
              BlocBuilder<SwitchBloc, SwitchStates>(
                builder: (context, state) {
                  return Switch(
                      value: state.isSwitch,
                      onChanged: (newValue) {
                        context
                            .read<SwitchBloc>()
                            .add(EnableorDisableNotification());
                      });
                },
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            color: Colors.red.withOpacity(.2),
          ),
          Slider(value: .4, onChanged: (value) {})
        ],
      ),
    );
  }
}
