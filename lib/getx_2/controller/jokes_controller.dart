import 'package:get/get.dart';
import 'package:getx/getx_2/data/model/joke_model.dart';
import 'package:getx/getx_2/service/api_service.dart';

class JokesController extends GetxController{

  JokesController(){
    getJokes();
  }

  var isLoading = false.obs;

  var jokes = [].obs;

  void getJokes()async{
    changeLoading();
    jokes.value = await ApiService().getJokes();
    changeLoading();
  }

  changeLoading(){
    isLoading.value =! isLoading.value;
  }
}