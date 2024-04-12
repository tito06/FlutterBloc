import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/bloc/user/user_bloc.dart';
import 'package:flutter_application_bloc/bloc/user/user_event.dart';
import 'package:flutter_application_bloc/bloc/user/user_state.dart';
import 'package:flutter_application_bloc/data/user_model.dart';
import 'package:flutter_application_bloc/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(  
        UserRepository(),
      )..add(LoadUserEvent()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context,state){
          if(state is  UserLoadingState){
             return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if( state is UserErrorState){
            return const Center(child:  Text("Error"));

          }
             if (state is UserLoadedState) {
            List<UserModel> userList = state.users;
            return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                        color: Theme.of(context).primaryColor,
                        child: ListTile(
                            title: Text(
                              '${userList[index].firstName}  ${userList[index].lastName}',
                              style: const TextStyle(color: Colors.white),
                            ),

                            subtitle: Text(
                              '${userList[index].email}',
                              style: const TextStyle(color: Colors.white),
                            ),
                            
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  userList[index].avatar.toString()),
                            ))),
                  );
                });
          }
          return Container();
        }),
      
      );
  }
}