import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc/counter/counter_bloc.dart';
import 'package:flutter_application_bloc/ui/counter_sceen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const MaterialApp(
      home: CounterScreen()
    ),
      );
  }
}
