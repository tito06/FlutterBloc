import 'package:equatable/equatable.dart';

abstract class CounterTestEvent extends Equatable{}

class IncreaseCount extends CounterTestEvent{
  
  @override
  List<Object?> get props => [];

  
}

class DecreaseCount extends CounterTestEvent {

  @override
  List<Object?> get props => [];

  
}