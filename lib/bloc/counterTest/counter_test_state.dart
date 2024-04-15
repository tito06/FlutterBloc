import 'package:equatable/equatable.dart';

class CounterTestState extends Equatable{

 final int count;

 const CounterTestState({
  this.count = 0
 });

  @override
  List<Object?> get props => [count];


  CounterTestState copyWith({int? count}){
    return CounterTestState(
      count: count ?? this.count
    );
  }

  
}