

import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc/counter/counter_bloc.dart';
import 'package:flutter_application_bloc/bloc/counter/counter_event.dart';
import 'package:flutter_application_bloc/bloc/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => __CounterScreenStateState();
}

class __CounterScreenStateState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Tuitorial"),),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          BlocBuilder<CounterBloc, CounterState>
          (builder: (context, state){
            return  Center(
            child: Text(state.counter.toString(),
            style: const TextStyle(fontSize: 60),),
          );
          }),
          
          Row( mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                  context.read<CounterBloc>().add(IncrementCounter());
              },
               child: const Text("Increase Value")),

               const SizedBox(width: 5,),
                ElevatedButton(onPressed: (){
                    context.read<CounterBloc>().add(DecrementCounter());
                },
               child: const Text("Decrease Value"))
            ],
          )
        ]),
    );
  }
}