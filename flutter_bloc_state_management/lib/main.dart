import 'package:flutter/material.dart';
import 'package:flutter_bloc_state_management/bloc/switch/switch_bloc.dart';
import 'package:flutter_bloc_state_management/ui/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      home: BlocProvider(
        create: (context) => SwitchBloc(),
        child: const Counter(),
      ),
    );
  }
}
