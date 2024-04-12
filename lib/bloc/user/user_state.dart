import 'package:equatable/equatable.dart';
import 'package:flutter_application_bloc/data/user_model.dart';

 class UserState extends Equatable{
  @override
  List<Object?> get props => [];
  
}

class UserLoadingState extends UserState{
  @override
  List<Object?> get props => [];
}

class UserLoadedState extends UserState{
  final List<UserModel> users;
  UserLoadedState(this.users);
    @override
  List<Object?> get props => [users];
}

class UserErrorState extends UserState{
  final String error;
  UserErrorState(this.error);
    @override
  List<Object?> get props => [error];
}