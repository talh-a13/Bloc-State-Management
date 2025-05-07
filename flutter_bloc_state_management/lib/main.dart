import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_bloc.dart';
import 'package:flutter_bloc_state_management/bloc/counter/counter_bloc.dart'; // Import your CounterBloc
import 'package:flutter_bloc_state_management/ui/switch_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Counter Example',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SwitchBloc()),
          BlocProvider(create: (context) => CounterBloc()), // Add this
        ],
        child: const SwitchScreen(),
      ),
    );
  }
}
