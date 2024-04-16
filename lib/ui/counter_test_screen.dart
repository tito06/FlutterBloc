import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc/counterTest/counter_test_bloc.dart';
import 'package:flutter_application_bloc/bloc/counterTest/counter_test_event.dart';
import 'package:flutter_application_bloc/bloc/counterTest/counter_test_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterTestScreen extends StatefulWidget {
  const CounterTestScreen({super.key});

  @override
  State<CounterTestScreen> createState() => __CounterTestScreen();
}

class __CounterTestScreen extends State<CounterTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter test"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterTestBloc, CounterTestState>(
            builder: (context, state) {
            return Center(
            child: Text(state.count.toString(),
            
             style: const TextStyle(fontSize: 60.0),),
          );

            }),
          

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ElevatedButton(onPressed: (){

                context.read<CounterTestBloc>().add(IncreaseCount());
              },
               child: Text("Increase")),

              const SizedBox(width: 5),

               ElevatedButton(onPressed: (){
                context.read<CounterTestBloc>().add(DecreaseCount());
               },
               child: Text("Decrease"))
            ],
          )
        ],
      ),

    );
  }
}