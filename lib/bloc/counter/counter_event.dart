import 'package:equatable/equatable.dart' ;

abstract class CounterEvent extends Equatable{}

class IncrementCounter extends CounterEvent{
    @override
  List<Object> get props => [];
}

class DecrementCounter extends CounterEvent{
    @override
  List<Object> get props => [];
}