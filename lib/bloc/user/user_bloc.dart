import 'package:bloc/bloc.dart';
import 'package:flutter_application_bloc/bloc/user/user_event.dart';
import 'package:flutter_application_bloc/bloc/user/user_state.dart';
import 'package:flutter_application_bloc/repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent,UserState>{
  
  final UserRepository userRepository;
  
  UserBloc(this.userRepository):super(UserLoadingState()){
    on<LoadUserEvent>((event, emit)async{
        emit(UserLoadingState());
        try{
          final user = await userRepository.getUser();
          emit(UserLoadedState(user));
        }catch(e){
          emit(UserErrorState(e.toString()));
        }
    });
  }

  

}