import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_event.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_state.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
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
                    },
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          BlocBuilder<SwitchBloc, SwitchStates>(
            builder: (context, state) {
              return Container(
                height: 200,
                color: Colors.red.withOpacity(state.slidervalue),
              );
            },
          ),
          BlocBuilder<SwitchBloc, SwitchStates>(
            builder: (context, state) {
              return Slider(
                value: state.slidervalue,
                onChanged: (value) {
                  context.read<SwitchBloc>().add(SliderEvent(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
