import 'dart:convert';

import 'package:flutter_application_bloc/data/user_model.dart';
import 'package:http/http.dart';

class UserRepository {

  String baseUrl = 'https://reqres.in/api/users?page=2';

  Future<List<UserModel>> getUser() async{

    Response response = await get(Uri.parse(baseUrl));


    if(response.statusCode == 200){
      final List result = jsonDecode(response.body)['data'];
      return result.map((e) => UserModel.fromJson(e)).toList();
    }else{
      throw Exception(response.reasonPhrase);
    }

  }
}