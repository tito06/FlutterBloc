import 'package:flutter_application_bloc/bloc/counterTest/counter_test_event.dart';
import 'package:flutter_application_bloc/bloc/counterTest/counter_test_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterTestBloc extends Bloc<CounterTestEvent, CounterTestState>{
 
 
  CounterTestBloc():super(const CounterTestState()){

    on<IncreaseCount>(_increase);
    on<DecreaseCount>(_decrease);

  }


  void _increase(IncreaseCount event, Emitter<CounterTestState> emit){
    emit(state.copyWith(count: state.count +1));
  }

  void _decrease(DecreaseCount event, Emitter<CounterTestState> emit){
    emit(state.copyWith(count: state.count -1));
  }


}