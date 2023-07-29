import 'package:dio/dio.dart';

import '../data/model/joke_model.dart';

class ApiService{
  Future getJokes() async {
    Dio dio = Dio();
    Response response = await dio.get("https://official-joke-api.appspot.com/jokes/ten");
    if(response.statusCode == 200){
      List jokes = response.data.map((e) => Joke.fromJson(e)).toList();
      return jokes;
    }
  }
}