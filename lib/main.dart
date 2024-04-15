import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc/counter/counter_bloc.dart';
import 'package:flutter_application_bloc/bloc/counterTest/counter_test_bloc.dart';
import 'package:flutter_application_bloc/bloc/user/user_bloc.dart';
import 'package:flutter_application_bloc/repository/user_repository.dart';
import 'package:flutter_application_bloc/ui/counter_sceen.dart';
import 'package:flutter_application_bloc/ui/counter_test_screen.dart';
import 'package:flutter_application_bloc/ui/user_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=> CounterTestBloc(),
    
    child: const MaterialApp(
      home: CounterTestScreen()
    ));
  
  }
}
